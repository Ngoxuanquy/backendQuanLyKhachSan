

const { BadRequestError, AuthFailureError, ForbiddenError } = require("../core/error.response.js")
const { PrismaClient } = require('@prisma/client');
const { contacts } = new PrismaClient();

// define Factory class to create product
class ContactFactory {

    static async createContact(payload) {

        const product = await contacts.create({
            data: {
                product_name: payload.product_name,
                product_thumb: payload.product_thumb,
                product_price: payload.product_price,
                product_description: payload.product_description,
                product_type: payload.product_type,
                product_quantity: payload.product_quantity,
                product_attributes: payload.product_attributes
            }
        })

        return product;

    }

    static async getContact(decode) {

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 2; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await contacts.findMany({
            skip,
            take,
            // where: {
            //     ordersId: null
            // }
        })

        return Get_product;

    }

    static async getOrderContacts(payload) {
        const contact = await contacts.findMany({
            select: {
                name: true,
                formatted_address: true,
                transaction_sell_lines: {
                    select: {
                        unit_price: true,
                        quantity: true,
                        product_id: true
                    }
                },
                // products: true,

                order_histories: true,
                orders: {
                    where: {
                        nvkt_id: Number(payload.id)// Điều kiện nvkt_id
                    }
                }
            },

        });

        return contact;
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


module.exports = ContactFactory