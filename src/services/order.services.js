

const { BadRequestError, AuthFailureError, ForbiddenError } = require("../core/error.response.js")
const { PrismaClient } = require('@prisma/client');
const { orders } = new PrismaClient();
const prisma = new PrismaClient();


// define Factory class to create product
class OrderFactory {

    static async createOrder(payload) {

        let result
        try {
            result = await prisma.$transaction([
                orders.create({
                    data: {
                        product_id: payload.product_id,
                        status: payload.status,
                    }
                })
                //    product.update({
                //         where: { id: productId },
                //         data: { quantity: { decrement: quantity } }
                //     })
            ])
        } catch (error) {
            // Rollback the transaction if any of the queries failed
            console.error(error)
            await prisma.$rollback()
        }

        return result
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


module.exports = OrderFactory