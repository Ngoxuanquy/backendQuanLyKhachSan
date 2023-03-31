
const bcrypt = require('bcrypt')
const crypto = require('crypto')
const KeyTokenServices = require("./KeyToken.services")
const { login } = require("../auth/authUtils")
const { findByEmail } = require('./shop.service')
const { BadRequestError, AuthFailureError, ForbiddenError } = require("../core/error.response.js")
const { createTokenPair, verifyJWT } = require("../auth/authUtils")
const getIntoData = require("../utils")

const { PrismaClient } = require('@prisma/client');
const { users, Keys, refeshTokensUsed } = new PrismaClient();

const RoleShop = {
    NHANVIEN: 'NHANVIEN',
    QUANLY: 'QUANLY',
    CHUTICH: 'CHUTICH',
    ADMIN: 'ADMIN'
}


class AccessSevice {

    static HandlerRefreshTokenV2 = async ({ keyStore, user, refeshToken }) => {

        const { id, email } = user;

        // console.log(keyStore.refeshTokensUsed)

        const refeshTokens = await refeshTokensUsed.findMany({
            where: {
                refeshToken: refeshToken,

            },
        });

        if (!refeshTokens) {
            await KeyTokenServices.deleteKeyById(id)
            throw new ForbiddenError('Something  wrng happend')

        }


        if (keyStore[0].refeshToken != refeshToken) throw new AuthFailureError('Shop not reqisteted 1')

        const foundShop = await users.findUnique({
            where: {
                email: email,
            },
        })

        if (!foundShop) throw new AuthFailureError('Shop not reqisteted 2')

        //create 1 cap moiw

        const tokens = await createTokenPair(
            { id, email },
            keyStore[0].publicKey,
            keyStore[0].privateKey
        )
        //update token
        // await keyStore.updateOne({
        //     $set: {
        //         refeshToken: tokens.refeshToken
        //     },
        //     $addToSet: {
        //         refeshTokensUsed: refeshToken
        //     }
        // })

        await refeshTokensUsed.create({
            data: {
                refeshToken: refeshToken,
                keysId: keyStore.usersId
            }
        })

        await Keys.updateMany({
            data: {
                refeshToken: tokens.refeshToken
            },
            where: {
                usersId: keyStore.usersId
            }

        })

        return {
            users,
            tokens
        }


    }

    static HandlerRefreshToken = async (refeshToken) => {

        // console.log(refeshToken)

        //check xem token ddc su dung chuwa?
        const foundToken = await KeyTokenServices.findByRefreshTokenUsed(refeshToken)


        if (foundToken) {
            // da dung token (nguy hiem)
            const { userId, email } = await verifyJWT(refeshToken, foundToken.privateKey)

            //xoa
            await KeyTokenServices.deleteKeyById(userId)

            throw new ForbiddenError('Something  wrng happend')

        }

        // console.log("holderToken :")

        const holderToken = await KeyTokenServices.findByRefreshToken(refeshToken)

        if (!holderToken) throw new AuthFailureError('Shop not reqisteted 1')

        //verfly token
        const { userId, email } = await verifyJWT(refeshToken, holderToken.privateKey)
        //ckeck token
        // console.log('[2]' + { userId, email })

        const foundShop = await findByEmail({ email })
        if (!foundShop) throw new AuthFailureError('Shop not reqisteted 2')

        //create 1 cap moiw

        const tokens = await createTokenPair(
            { userId, email },
            holderToken.publicKey,
            holderToken.privateKey
        )
        // console.log("tokens" + tokens)
        //update token
        await holderToken.update({
            $set: {
                refeshToken: tokens.refeshToken
            },
            $addToSet: {
                refeshTokensUsed: refeshToken
            }
        })

        return {
            user: { userId, email },
            tokens
        }

    }

    static logout = async (keyStore) => {
        console.log("keyStore ", keyStore[0].id)
        const delKey = await KeyTokenServices.removeKeyById((keyStore[0].id))

        return delKey
    }

    static login = async ({ email, password, refeshToken = null }) => {

        const foundShop = await users.findUnique({
            where: {
                email: email,
            },
        })

        if (!foundShop) throw new BadRequestError('Shop not registered')
        console.log(foundShop.password)

        const match = bcrypt.compare(password, foundShop.password)

        if (!match) throw new AuthFailureError('Authentication error')


        // create publicKey, privateKey

        const privateKey = crypto.randomBytes(64).toString('hex')
        const publicKey = crypto.randomBytes(64).toString('hex')

        // create token

        const tokens = await createTokenPair(
            { id: foundShop.id, email },
            publicKey,
            privateKey
        )

        console.log(tokens)

        await KeyTokenServices.createKeyToken({
            id: foundShop.id,
            refeshToken: tokens.refeshToken,
            publicKey,
            privateKey,
        })

        return {
            shop: getIntoData({ fileds: ['id', 'name', 'email'], object: foundShop }),
            tokens,
        }
    }

    static signUp = async ({ name, email, password }) => {

        // try {
        const hodelShop = await users.findUnique({
            where: {
                email: email,
            },
        })
        if (hodelShop) {
            throw new BadRequestError('Error: Shop dax dduoc ddang ky')
        }

        const passwordHash = await bcrypt.hash(password, 10)
        const newShop = await users.create({
            data: {
                email: email,
                password: passwordHash,
                roles: "Nhan Vien",
                img: ""
            }
        })

        console.log(newShop)

        if (newShop) {

            const privateKey = crypto.randomBytes(64).toString('hex')
            const publicKey = crypto.randomBytes(64).toString('hex')

            console.log({
                privateKey, publicKey
            })

            const keyStore = await KeyTokenServices.createKeyToken({
                id: newShop.id,
                publicKey,
                privateKey
            })

            if (!keyStore) {
                return {
                    code: 403,
                    message: 'keyStore errr'
                }
            }

            // const publicKeyObject = crypto.createPublicKey(publicKeyString)

            // console.log("publicKeyObject : ", publicKeyObject)

            //create token pair
            const tokens = await createTokenPair({ usersId: newShop.id, email }, publicKey, privateKey)

            return {
                code: 201,
                metadata: {
                    shop: getIntoData({ fileds: ['_id', 'name', 'email'], object: newShop }),
                    tokens
                }
            }
        }

        return {
            code: 200,
            metadata: null
        }

        // } catch (error) {
        //     return {
        //         code: 'xxx',
        //         message: error.message,
        //         status: 'error'

        //     }
        // }
    }
}

module.exports = AccessSevice