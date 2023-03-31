const JWT = require('jsonwebtoken');
const { PrismaClient } = require('@prisma/client');
const { users } = new PrismaClient();
const { findByUserId } = require('../services/KeyToken.services')
const asyncHandler = require('../helpers/asyncHandle')
const { AuthFailureError, NotFoundError } = require('../core/error.response')

const HEADER = {
    API_KEY: 'x-api-key',
    CLIENT_ID: 'x-client-id',
    AUTHORIZATION: 'authorization',
    REFESHTOKEN: 'refeshtoken'
}

const createTokenPair = async (payload, publicKey, privateKey) => {

    try {
        //accessToken
        const accessToken = await JWT.sign(payload, publicKey, {
            expiresIn: '2 days'
        })


        //refeshToken
        const refeshToken = await JWT.sign(payload, privateKey, {
            expiresIn: '7 days',
        })

        //
        JWT.verify(accessToken, publicKey, (err, decode) => {
            if (err) {
                console.log(err)
            }
            else {
                console.log('decode verify: ', decode)
            }
        })

        return { accessToken, refeshToken }
    } catch (error) {
        console.log(error)
    }
}


const authenticationV2 = asyncHandler(async (req, res, next) => {
    const userId = req.headers[HEADER.CLIENT_ID]

    console.log(userId)


    if (!userId) throw new AuthFailureError('Invalid Request')

    const keyStore = findByUserId(userId)
    if (!keyStore) throw new NotFoundError('Not Found KeyStore')

    let promise = new Promise((resolve, reject) => {
        // Do some asynchronous operation
        resolve(keyStore);
    });

    let data = await promise;


    if (req.headers[HEADER.REFESHTOKEN]) {
        try {

            const refeshToken = req.headers[HEADER.REFESHTOKEN]

            console.log(refeshToken)
            const decodeUser = JWT.verify(refeshToken, data[0].privateKey)


            if (userId != decodeUser.id) throw new AuthFailureError('Invalid userID')


            req.keyStore = data
            req.user = decodeUser
            req.refeshToken = refeshToken

            return next()


        } catch (error) {
            throw error
        }
    }

    const accessToken = req.headers[HEADER.AUTHORIZATION]
    console.log(accessToken)

    if (!accessToken) throw new AuthFailureError('Invalid Request')



    try {

        const decodeUser = JWT.verify(accessToken, data[0].publicKey)
        // console.log(decodeUser)

        if (userId != decodeUser.id) throw new AuthFailureError('Invalid Request')

        req.keyStore = data
        console.log("a")

        return next()
    } catch (error) {
        console.log(error)
        throw error
    }
})


const verifyJWT = async (token, keySecret) => {
    return await JWT.verify(token, keySecret)
}



module.exports = {
    // authentication,
    createTokenPair,
    authenticationV2,
    verifyJWT
}