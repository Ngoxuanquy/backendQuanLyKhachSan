const { PrismaClient } = require('@prisma/client');
const { Keys, users } = new PrismaClient();


class KeyTokenServices {
    static createKeyToken = async ({ id, publicKey, privateKey, refeshToken }) => {
        console.log({})

        try {

            const orders = await Keys.count({
                where: {
                    usersId: Number(id)
                },
            })

            if (orders == 0) {
                console.log(refeshToken)
                const tokens = await Keys.create({
                    data: {
                        usersId: Number(id),
                        publicKey,
                        privateKey,
                        // refeshTokensUsed: { set: [] },
                        refeshToken: "refeshToken"
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

        console.log(userId)

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


    static keyUsers = async (id) => {

        const objkey = await Keys.findMany({
            where: {
                usersId: Number(id),
                // status: true
            },
        })


        return objkey
    }
}


module.exports = KeyTokenServices