

const { BadRequestError, AuthFailureError, ForbiddenError } = require("../core/error.response.js")
const { PrismaClient } = require('@prisma/client');
const { users } = new PrismaClient();
const { removeUndefinedObject } = require("../utils/index.js")
// define Factory class to create product
class UserFactory {

    static async UpdateUsers(payload) {

        const data = removeUndefinedObject(payload)

        console.log(data)

        const user = await users.update({
            data: {
                surname: data.surname,
                address: data.address,
                date_of_birth: data.date_of_birth,

            },
            where: {
                id: Number(data.id)
            }
        })
        return user;
    }

    static async GetUsers(payload) {

        const userId = await users.findMany({
            select: {
                id: true
            },
        })
        return userId;
    }
}


module.exports = UserFactory