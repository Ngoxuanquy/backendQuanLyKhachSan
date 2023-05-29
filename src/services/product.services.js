

const { BadRequestError, AuthFailureError, ForbiddenError } = require("../core/error.response.js")
const { PrismaClient } = require('@prisma/client');
const { products } = new PrismaClient();

// define Factory class to create product
class ProductFactory {

    // static async createProduct(payload) {

    //     const product = await products.create({
    //         data: {
    //             product_name: payload.product_name,
    //             product_thumb: payload.product_thumb,
    //             product_price: payload.product_price,
    //             product_description: payload.product_description,
    //             product_type: payload.product_type,
    //             product_quantity: payload.product_quantity,
    //             product_attributes: payload.product_attributes
    //         }
    //     })

    //     return product;

    // }

    static async getProduct(payload) {

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 2; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await products.findMany({
            skip,
            take,

        })

        return Get_product;

        // try {
        //     const product = await prisma.product.findUnique({
        //         where: {
        //             id: Number(payload.id),
        //         },
        //         select: {
        //             qty_available: true,
        //         },
        //     });

        //     if (product) {
        //         return product.qty_available;
        //     } else {
        //         return null; // or handle the case when the product with the given ID is not found
        //     }
        // } catch (error) {
        //     console.error(error);
        //     throw error;
        // } finally {
        //     await prisma.$disconnect();
        // }


        // // Usage:
        // const productId = 1; // Replace with the desired product ID
        // getProductQtyAvailable(productId)
        //   .then((qtyAvailable) => {
        //     console.log(`The qty_available for product ${productId} is: ${qtyAvailable}`);
        //   })
        //   .catch((error) => {
        //     console.error('Error retrieving qty_available:', error);
        //   });

    }

    static async getProductById(decode) {

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 2; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await products.findMany({
            skip,
            take,
            where: {
                id: Number(decode.id)
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


module.exports = ProductFactory