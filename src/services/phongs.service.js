const {
    BadRequestError,
    AuthFailureError,
    ForbiddenError,
} = require('../core/error.response.js');
const { PrismaClient } = require('@prisma/client');
const { users } = new PrismaClient();
const { removeUndefinedObject } = require('../utils/index.js');
// define Factory class to create product
class UserFactory {
    static async UpdateUsers(payload) {
        const data = removeUndefinedObject(payload);

        console.log(data);

        const user = await users.update({
            data: {
                surname: data.surname,
                address: data.address,
                date_of_birth: data.date_of_birth,
            },
            where: {
                id: Number(data.id),
            },
        });
        return user;
    }

    static async getPhong(payload) {
        try {
            console.log('ababab');
            connection.query(
                'SELECT * FROM phong',
                (error, results, fields) => {
                    if (error) {
                        console.error('Error executing query:', error);

                        return;
                    }
                    console.log('Query results:', results);
                },
            );
        } catch (error) {
            console.log('Error executing query:', error);
        }
    }
}

module.exports = UserFactory;
