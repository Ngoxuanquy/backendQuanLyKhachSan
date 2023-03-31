const { PrismaClient } = require('@prisma/client');
const { users } = new PrismaClient();


const findByEmail = async ({
    email,
    select = { email: 1, password: 1, name: 1, status: 1, roles: 1 },
}) => {
    console.log(email)
    return await users.findUnique({
        where: {
            email: email,
        },
    }).select(select).lean()
}

module.exports = { findByEmail }
