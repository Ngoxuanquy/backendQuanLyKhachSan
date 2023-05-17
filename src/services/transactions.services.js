

const { BadRequestError, AuthFailureError, ForbiddenError } = require("../core/error.response.js")
const { PrismaClient } = require('@prisma/client');
const { transactions } = new PrismaClient();


// define Factory class to create product
class TransactionFactory {

    static async createTransaction(payload) {

        const orders = await transactions.count({
            where: {
                contact_id: Number(payload.contact_id)
            },
        })

        console.log(payload)

        if (orders == 0) {
            const newTransaction = await transactions.create({
                data: {
                    contact_id: payload.contact_id,
                    nvkt_id: Number(payload.nvkt_id),
                    business_id: payload.business_id,
                    created_by: payload.created_by,
                    status: 'pending',
                    final_total: payload.final_total,
                    transaction_date: new Date(),
                },
            })
            return newTransaction
        }
    }

    static async getTransaction(decode) {

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 2; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await transactions.findMany({
            skip,
            take,

        })

        return Get_product;
    }

    static async updateTransaction(decode) {

        const Get_product = await transactions.updateMany({
            data: {
                status: 'ordered'
            },
            where: {
                contact_id: Number(decode.id)
            }
        })

        return Get_product;
    }


    static async SelectTransactionByConcactId(decode) {

        const Get_Transaction = await transactions.findMany({

            where: {
                contact_id: Number(decode.id)
            }
        })

        return Get_Transaction;
    }

}

// // define base product class
// class Product {
//     constructor({
//         product_name, product_thumb, product_description, product_price,
//         product_type, product_shop, product_attributes, product_quantity
//     }) {

//         this.product_attributes = product_attributes
//         this.product_quantity = product_quantity
//         this.product_name = product_name
//         this.product_thumb = product_thumb
//         this.product_description = product_description
//         this.product_price = product_price
//         this.product_type = product_type
//         this.product_shop = product_shop

//     }

//     // create new product
//     async createProduct() {
//         return await product.create(this)
//     }

// }


module.exports = TransactionFactory