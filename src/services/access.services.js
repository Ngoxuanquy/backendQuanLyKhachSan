const bcrypt = require('bcrypt');
const crypto = require('crypto');
const KeyTokenServices = require('./KeyToken.services');
const { login } = require('../auth/authUtils');
const { findByEmail } = require('./shop.service');
const {
    BadRequestError,
    AuthFailureError,
    ForbiddenError,
} = require('../core/error.response.js');
const { createTokenPair, verifyJWT } = require('../auth/authUtils');
const { getIntoData } = require('../utils');

const { connection, query } = require('../dbs/init.sql.js');

const { PrismaClient } = require('@prisma/client');
const { users, Keys, refeshTokensUsed } = new PrismaClient();

const RoleShop = {
    NHANVIEN: 'NHANVIEN',
    QUANLY: 'QUANLY',
    CHUTICH: 'CHUTICH',
    ADMIN: 'ADMIN',
};

class AccessSevice {
    static HandlerRefreshTokenV2 = async ({ keyStore, user, refeshToken }) => {
        const { id, username } = user;

        console.log({ keyStore });

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

        if (keyStore.refeshToken != refeshToken)
            throw new AuthFailureError('Shop not reqisteted 1');

        const foundShop = await users.findUnique({
            where: {
                username: username,
            },
        });

        if (!foundShop) throw new AuthFailureError('Shop not reqisteted 2');

        //create 1 cap moiw

        const tokens = await createTokenPair(
            { id, username },
            keyStore.publicKey,
            keyStore.privateKey,
        );
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
                refeshToken: tokens.refeshToken, // Update `refreshToken` field with value from `tokens.refreshToken`
            },
            where: {
                usersId: keyStore.usersId, // Specify the condition for updating documents
            },
        });

        return {
            users,
            tokens,
        };
    };

    static HandlerRefreshToken = async (refeshToken) => {
        // console.log(refeshToken)

        //check xem token ddc su dung chuwa?
        const foundToken = await KeyTokenServices.findByRefreshTokenUsed(
            refeshToken,
        );

        if (foundToken) {
            // da dung token (nguy hiem)
            const { userId, username } = await verifyJWT(
                refeshToken,
                foundToken.privateKey,
            );

            //xoa
            await KeyTokenServices.deleteKeyById(userId);

            throw new ForbiddenError('Something  wrng happend');
        }

        // console.log("holderToken :")

        const holderToken = await KeyTokenServices.findByRefreshToken(
            refeshToken,
        );

        console.log({ holderToken });

        if (!holderToken) throw new AuthFailureError('Shop not reqisteted 1');

        //verfly token
        const { userId, username } = await verifyJWT(
            refeshToken,
            holderToken.privateKey,
        );
        //ckeck token
        // console.log('[2]' + { userId, email })

        const foundShop = await findByEmail({ username });
        if (!foundShop) throw new AuthFailureError('Shop not reqisteted 2');

        //create 1 cap moiw

        const tokens = await createTokenPair(
            { userId, username },
            holderToken.publicKey,
            holderToken.privateKey,
        );
        // console.log("tokens" + tokens)
        //update token
        await holderToken.update({
            $set: {
                refeshToken: tokens.refeshToken,
            },
            $addToSet: {
                refeshTokensUsed: refeshToken,
            },
        });

        return {
            user: { userId, username },
            tokens,
        };
    };

    static logout = async (keyStore, decode) => {
        const delKey = await KeyTokenServices.removeKeyById(keyStore[0].id);

        return { delKey, decode };
    };

    static login = async ({ username, password, refeshToken = null }) => {
        const foundShop = await users.findUnique({
            where: {
                username: username,
            },
        });

        if (!foundShop)
            throw new BadRequestError('Sai Mật Khẩu hoặc tài khoản');

        const match = await bcrypt.compare(password, foundShop.password);

        console.log(match);

        if (!match) throw new AuthFailureError('Sai Mật Khẩu hoặc tài khoản');

        // create publicKey, privateKey

        const privateKey = crypto.randomBytes(64).toString('hex');
        const publicKey = crypto.randomBytes(64).toString('hex');

        // create token

        const tokens = await createTokenPair(
            { id: foundShop.id, username },
            publicKey,
            privateKey,
        );

        console.log(tokens);

        await KeyTokenServices.createKeyToken({
            id: foundShop.id,
            publicKey,
            privateKey,
            refeshToken: tokens.refeshToken,
        });

        return {
            shop: getIntoData({
                fileds: ['id', 'username', 'email'],
                object: foundShop,
            }),
            tokens,
        };
    };

    static signUp = async ({ name, username, password }) => {
        try {
            const newData = {
                TenDN: username,
                MatKhau: password,
                // Add other columns and corresponding values here if needed
            };

            // Perform the INSERT operation
            const value = await new Promise((resolve, reject) => {
                connection.query(
                    'INSERT INTO taikhoan SET ?',
                    newData,
                    (error, results, fields) => {
                        if (error) {
                            console.error('Error while inserting data:', error);
                            reject('không thành công');
                            return;
                        }
                        resolve({
                            mes: 'Sign up successful!!',
                        });
                    },
                );
            });

            return value;
        } catch (error) {
            console.log(error);
            // Handle error properly, maybe throw it if necessary
            throw error;
        }
    };
}

module.exports = AccessSevice;
