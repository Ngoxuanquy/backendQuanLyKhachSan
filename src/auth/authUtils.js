const JWT = require('jsonwebtoken');
const { PrismaClient } = require('@prisma/client');
const { users } = new PrismaClient();
const { findByUserId } = require('../services/KeyToken.services');
const asyncHandler = require('../helpers/asyncHandle');
const { AuthFailureError, NotFoundError } = require('../core/error.response');

const HEADER = {
    API_KEY: 'x-api-key',
    CLIENT_ID: 'x-client-id',
    AUTHORIZATION: 'authorization',
    REFESHTOKEN: 'refeshtoken',
};

const createTokenPair = async (payload, publicKey, privateKey) => {
    try {
        //accessToken
        const accessToken = await JWT.sign(payload, publicKey, {
            expiresIn: '1 h',
        });

        console.log(Math.floor(Date.now() / 1000));

        //refeshToken
        const refeshToken = await JWT.sign(payload, privateKey, {
            expiresIn: '7 days',
        });

        const decode = JWT.verify(accessToken, publicKey);

        //
        JWT.verify(accessToken, publicKey, (err, decode) => {
            if (err) {
                console.log(err);
            } else {
                console.log('decode verify: ', decode);
            }
        });

        return { accessToken, refeshToken, timeExp: decode.exp };
    } catch (error) {
        console.log(error);
    }
};

const verifyJWT = async (token, keySecret) => {
    return await JWT.verify(token, keySecret);
};

module.exports = {
    // authentication,
    createTokenPair,
    verifyJWT,
};
