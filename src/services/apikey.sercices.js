// const apikeyModel = require("../models/apikey.model")
const crypto = require('crypto')

const { PrismaClient } = require('@prisma/client');
const { Keys, ApiKey } = new PrismaClient();


const findById = async (key) => {


    // const newKey = await ApiKey.create({
    //     data: {
    //         key: crypto.randomBytes(64).toString('hex'),
    //         permissions: ['0000']
    //     }
    // })

    // console.log(newKey)

    // console.log(ApiKey)

    const objkey = await ApiKey.findUnique({
        where: {
            key: key,
            // status: true
        },
    })


    return objkey
}

module.exports = { findById }