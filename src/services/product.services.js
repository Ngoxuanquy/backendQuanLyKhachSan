

const { BadRequestError, AuthFailureError, ForbiddenError } = require("../core/error.response.js")
const { PrismaClient } = require('@prisma/client');
const { products } = new PrismaClient();

// define Factory class to create product
class ProductFactory {

    static async createProduct(payload) {

        console.log(payload)

        const product = await products.create({
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


module.exports = ProductFactory