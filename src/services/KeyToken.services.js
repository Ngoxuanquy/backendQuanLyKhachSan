const { PrismaClient } = require('@prisma/client');
const { Keys, users } = new PrismaClient();


class KeyTokenServices {
    static createKeyToken = async ({ id, publicKey, privateKey, refeshToken }) => {

        // console.log(refeshToken)

        try {
            // const tokens = await Keys.create({
            //     data: {
            //         usersId: Number(id),
            //         publicKey,
            //         privateKey,
            //         // refeshTokensUsed: { set: [] },
            //         refeshToken: ""
            //         // Add additional fields as needed
            //     },
            //     // where: {
            //     //     usersId: Number(id)
            //     // }
            // });
            // return tokens ? tokens.publicKey : null

            // const tokens = await users.updateMany({
            //     where: { usersId: Number(id) },
            //     data: {
            //         Keys: {
            //             upsert: {
            //                 create: {
            //                     usersId: Number(id),
            //                     publicKey,
            //                     privateKey,
            //                     // refeshTokensUsed: { set: [] },
            //                     refeshToken: ""
            //                 },
            //                 update: {
            //                     publicKey,
            //                     privateKey,
            //                     // refeshTokensUsed: { set: [] },
            //                     refeshToken: ""
            //                 },
            //             },
            //         }
            //     },
            // })


            // const tokens = await Keys.upsert({

            //     where: { usersId: Number(id) },
            //     create: {
            //         usersId: Number(id),
            //         publicKey,
            //         privateKey,
            //         // refeshTokensUsed: { set: [] },
            //         refeshToken: ""
            //     },
            //     update: {
            //         publicKey,
            //         privateKey,
            //         // refeshTokensUsed: { set: [] },
            //         refeshToken: ""
            //     },
            // })




            const orders = await Keys.count({
                where: {
                    usersId: Number(id)
                },
            })

            if (orders == 0) {
                const tokens = await Keys.create({
                    data: {
                        usersId: Number(id),
                        publicKey,
                        privateKey,
                        // refeshTokensUsed: { set: [] },
                        refeshToken: ""
                        // Add additional fields as needed
                    },
                    // where: {
                    //     usersId: Number(id)
                    // }
                });
                return tokens ? tokens.publicKey : null
            }
            if (orders != 0) {
                const tokens = await Keys.updateMany({
                    data: {
                        publicKey,
                        privateKey,
                        // refeshTokensUsed: { set: [] },
                        refeshToken
                        // Add additional fields as needed
                    },
                    where: {
                        usersId: Number(id)
                    }
                });
                return tokens ? tokens.publicKey : null
            }

            // return tokens ? tokens.publicKey : null
        } catch (error) {
            console.log(error)
        }
    }


    static findByUserId = async (userId) => {


        const keyToken = await Keys.findMany({
            where: {
                usersId: Number(userId)
            },
        })

        if (!keyToken) return console.log('loi')


        return await keyToken
    }

    static removeKeyById = async (id) => {
        console.log("id: " + id)
        return await Keys.deleteMany({
            where: {
                id: id,
            },
        })
    }

    static findByRefreshTokenUsed = async (refeshToken) => {

        return await Keys.findUnique({
            where: {
                refeshTokensUsed: refeshToken,
            },
        }
        )


    }

    static findByRefreshToken = async (refeshToken) => {

        return await Keys.findUnique({
            where: {
                refeshToken: refeshToken,
            },
        }
        )
    }

    // static deleteKeyById = async (userId) => {
    //     return await Keys.findUnique({ user: new Types.ObjectId(userId) })

    //     return await Keys.findUnique({
    //         where: {
    //             refeshToken: refeshToken,
    //         },
    //     }
    //     )
    // }
}


module.exports = KeyTokenServices