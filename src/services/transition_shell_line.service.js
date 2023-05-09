const { PrismaClient } = require('@prisma/client')

const { transaction_sell_lines } = new PrismaClient()
const prisma = new PrismaClient();


class TransactionShellLineService {
    // static async createTransactionShellLine({ transactionId, variation_id, products = [] }) {

    //     const data = []
    //     products.forEach((product) => {
    //         data.push({
    //             transaction_id: transactionId,
    //             product_id: product.productId,
    //             quantity: product.quantity,
    //             unit_price: product.quantity * product.price,
    //             variation_id: 1,
    //             item_tax: 0,
    //         })
    //     })

    //     console.log([...data])

    //     console.log('g')

    //     const newTransaction_sell_lines = await transaction_sell_lines.createMany({
    //         data: [...data],

    //     })

    //     return newTransaction_sell_lines
    // }


    static async createTransactionShellLine(payload) {

        console.log(payload)
        const newTransaction_sell_lines = await transaction_sell_lines.create({
            data: {
                transaction_id: Number(payload.transactionId),
                product_id: payload.productId,
                quantity: payload.quantity,
                unit_price: payload.quantity * payload.price,
                variation_id: 1,
                item_tax: 0,
            }

        })

        return newTransaction_sell_lines
    }


    static async getTransactionShellLine(params) {

        const get = await transaction_sell_lines.findMany({
            where: { transaction_id: Number(params.id), },
            include: {
                product: true
            }
        })

        return get
    }


    //update số lượng công
    static async updateCong(payload) {

        console.log({ payload })
        let result
        try {
            result = await prisma.$transaction([
                transaction_sell_lines.updateMany({
                    data: {
                        quantity: payload.quantity + 1,
                    },
                    where: {
                        product_id: Number(payload.productId),
                        transaction_id: Number(payload.transactionId),
                    }

                })

            ])
        } catch (error) {
            // Rollback the transaction if any of the queries failed
            console.error(error)
            await prisma.$rollback()
        }

        return result
    }


    //update số lượng trừ
    static async updateTru(payload) {

        console.log({ payload })
        let result
        try {
            result = await prisma.$transaction([
                transaction_sell_lines.updateMany({
                    data: {
                        quantity: payload.quantity - 1,
                    },
                    where: {
                        product_id: Number(payload.productId),
                        transaction_id: Number(payload.transactionId),
                    }

                })

            ])
        } catch (error) {
            // Rollback the transaction if any of the queries failed
            console.error(error)
            await prisma.$rollback()
        }

        return result
    }

    //Xoas sản phẩm
    static async delete(payload) {

        console.log({ payload })
        let result
        try {
            result = await prisma.$transaction([
                transaction_sell_lines.deleteMany({
                    where: {
                        product_id: Number(payload.productId),
                        transaction_id: Number(payload.transactionId),
                    }

                })

            ])
        } catch (error) {
            // Rollback the transaction if any of the queries failed
            console.error(error)
            await prisma.$rollback()
        }

        return result
    }

}

module.exports = TransactionShellLineService