const { PrismaClient } = require('@prisma/client')

const { transaction_payments } = new PrismaClient()
const prisma = new PrismaClient();


class TransactionPaymentService {

    static async createTransactionPayment(payload) {

        console.log(payload)
        const newTransaction_sell_lines = await transaction_payments.createMany({
            data: {
                transaction_id: Number(payload.transactionId),
                method: "cash",
                contactsId: Number(payload.contactsId),
                accepted_by: 1,
                created_by: 1

            }

        })

        return newTransaction_sell_lines
    }


    static async getTransactionPayment(params) {

        const get = await transaction_payments.findMany({
            where: { transaction_id: Number(params.id), },
            include: {
                product: true
            }
        })

        return get
    }


}

module.exports = TransactionPaymentService