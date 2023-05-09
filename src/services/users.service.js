

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
                surname: payload.surname,
                address: payload.address,
                date_of_birth: payload.date_of_birth,

            },
            where: {
                id: Number(payload.id)
            }

        })

        return user;

    }
}


module.exports = UserFactory