

const { BadRequestError, AuthFailureError, ForbiddenError } = require("../core/error.response.js")
const { PrismaClient } = require('@prisma/client');
const { order_images } = new PrismaClient();

// define Factory class to create product
class OrderimagesFactory {

    static async createImages(payload) {

        console.log(payload)

        const order_image = await order_images.create({
            data: {
                name: payload.name,
                contact_id: payload.contact_id,
                order_id: payload.order_id,
                time_chup: new Date(),
                filename: payload.img,

            }
        })

        return order_image

    }

    static async getImages(decode) {

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 2; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await order_images.findMany({
            skip,
            take,
            where: {
                order_id: Number(decode.id)
            }
        })

        return Get_product;

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


module.exports = OrderimagesFactory