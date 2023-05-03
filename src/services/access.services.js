
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

        const { id, username } = user;

        console.log({ keyStore })

        // console.log(keyStore.refeshTokensUsed)

        // const refeshTokens = await refeshTokensUsed.findMany({
        //     where: {
        //         refeshToken: refeshToken,

        //     },
        // });

        // if (!refeshTokens) {
        //     await KeyTokenServices.deleteKeyById(id)
        //     throw new ForbiddenError('Something  wrng happend')

        // }


        if (keyStore.refeshToken != refeshToken) throw new AuthFailureError('Shop not reqisteted 1')

        const foundShop = await users.findUnique({
            where: {
                username: username,
            },
        })

        if (!foundShop) throw new AuthFailureError('Shop not reqisteted 2')

        //create 1 cap moiw

        const tokens = await createTokenPair(
            { id, username },
            keyStore.publicKey,
            keyStore.privateKey
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


        // await Keys.updateMany({
        //     data: {
        //         refeshTokensUsed: refeshToken,
        //         refeshToken: tokens.refeshToken
        //     },
        //     where: {
        //         usersId: keyStore.usersId
        //     }

        // })

        await Keys.updateMany({
            data: {
                // refeshTokensUsed: { // Specify the field to update
                //     push: refeshToken // Use the `push` operation to add `refreshToken` value to the array
                // },
                refeshToken: tokens.refeshToken // Update `refreshToken` field with value from `tokens.refreshToken`
            },
            where: {
                usersId: keyStore.usersId // Specify the condition for updating documents
            }
        });



        return {
            users,
            tokens,

        }


    }

    static HandlerRefreshToken = async (refeshToken) => {

        // console.log(refeshToken)

        //check xem token ddc su dung chuwa?
        const foundToken = await KeyTokenServices.findByRefreshTokenUsed(refeshToken)


        if (foundToken) {
            // da dung token (nguy hiem)
            const { userId, username } = await verifyJWT(refeshToken, foundToken.privateKey)

            //xoa
            await KeyTokenServices.deleteKeyById(userId)

            throw new ForbiddenError('Something  wrng happend')

        }

        // console.log("holderToken :")

        const holderToken = await KeyTokenServices.findByRefreshToken(refeshToken)

        console.log({ holderToken })


        if (!holderToken) throw new AuthFailureError('Shop not reqisteted 1')

        //verfly token
        const { userId, username } = await verifyJWT(refeshToken, holderToken.privateKey)
        //ckeck token
        // console.log('[2]' + { userId, email })

        const foundShop = await findByEmail({ username })
        if (!foundShop) throw new AuthFailureError('Shop not reqisteted 2')

        //create 1 cap moiw

        const tokens = await createTokenPair(
            { userId, username },
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
            user: { userId, username },
            tokens
        }

    }

    static logout = async (keyStore, decode) => {
        const delKey = await KeyTokenServices.removeKeyById((keyStore[0].id))

        return { delKey, decode }
    }

    static login = async ({ username, password, refeshToken = null }) => {

        const foundShop = await users.findUnique({
            where: {
                username: username,
            },
        })


        if (!foundShop) throw new BadRequestError('Sai Mật Khẩu hoặc tài khoản')

        const match = await bcrypt.compare(password, foundShop.password)

        console.log(match)

        if (!match) throw new AuthFailureError('Sai Mật Khẩu hoặc tài khoản')


        // create publicKey, privateKey

        const privateKey = crypto.randomBytes(64).toString('hex')
        const publicKey = crypto.randomBytes(64).toString('hex')

        // create token

        const tokens = await createTokenPair(
            { id: foundShop.id, username },
            publicKey,
            privateKey
        )

        console.log(tokens)

        await KeyTokenServices.createKeyToken({
            id: foundShop.id,
            publicKey,
            privateKey,
            refeshToken: tokens.refeshToken,
        })

        return {
            shop: getIntoData({ fileds: ['id', 'name', 'email'], object: foundShop }),
            tokens,

        }
    }

    static signUp = async ({ name, username, password }) => {


        // try {
        const hodelShop = await users.findUnique({
            where: {
                username: username,
            },
        })

        console.log(hodelShop)


        if (hodelShop) {
            throw new BadRequestError('Error: Shop dax dduoc ddang ky')
        }

        const passwordHash = await bcrypt.hash(password, 10,)

        console.log(passwordHash)

        const newShop = await users.create({
            data: {
                email: username,
                password: passwordHash,
                surname: "",
                user_extension: "",
                sub_extension: "",
                first_name: "",
                sub_surname: "",
                device_id: "",
                branch_id: 0,
                type: "",
                last_name: "",
                username: username,
                operating_code: "",
                phong_ban: 0,
                bo_phan: 0,
                thoi_gian_lv: 0,
                salary_status: 0,
                user_kpi: 0,
                language: "",
                contact_no: "",
                address: "",
                remember_token: "",
                business_id: 0,
                status: "active",
                is_cmmsn_agnt: true,
                cmmsn_percent: 0,
                selected_contacts: true,
                dob: null,
                marital_status: "married",
                blood_group: "",
                contact_number: "",
                fb_link: "",
                twitter_link: "",
                social_media_1: "",
                social_media_2: "",
                permanent_address: "",
                current_address: "",
                so_hoa_don: 0,
                date_of_birth: new Date('2022-01-01'),
                user_type: "",
                phan_quyen: "",
                user_group_id: 0,
                ngay_nghi_phep: 0,
                lan_nghi_sai_qd: 0,
                gender: "",
                id_proof_date: null,
                id_proof_position: "",
                end_at: null,
                operating_available: 0,
                training_status: 0,
                custom_field_1: null,
                custom_field_2: null,
                custom_field_3: 26,
                custom_field_4: null,
                bank_account_number: "",
                bank_name: "",
                bank_account_name: "",
                cookie_first_device: "",
                cookie_second_device: "",
                bank_details: "",
                id_proof_name: "",
                id_proof_number: "",
                deleted_at: null,
                tg_bat_dau_lv: null,
                tg_ket_thuc_lv: null,
                chiet_khau_vuot: 0,
                last_seen: null,
                phu_cap: 0,
                start_at: null,
                login_failed: 0,
                ip_address_login_failed: "",
                company_ip_address: "",
                last_sessid: "",
                created_at: null,
                updated_at: null,
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

            console.log(keyStore)

            if (!keyStore) {
                return {
                    code: 403,
                    message: 'keyStore errr'
                }
            }

            // const publicKeyObject = crypto.createPublicKey(publicKeyString)

            // console.log("publicKeyObject : ", publicKeyObject)

            //create token pair
            const tokens = await createTokenPair({ usersId: newShop.id, username }, publicKey, privateKey)

            return {
                code: 201,
                metadata: {
                    shop: getIntoData({ fileds: ['id', 'username', 'email'], object: newShop }),
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