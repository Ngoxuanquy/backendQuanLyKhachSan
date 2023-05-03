

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

            ])
        } catch (error) {
            // Rollback the transaction if any of the queries failed
            console.error(error)
            await prisma.$rollback()
        }

        return result
    }


    static async getOrder(decode) {

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 2; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await orders.findMany({
            skip,
            take,
            // select: {
            //     product_name: true,
            //     product_thumb: true,
            //     product_price: true,
            //     product_description: true,
            //     product_type: true,
            //     product_quantity: true,
            //     product_attributes: true
            // }
        })

        return Get_product;

    }

}


module.exports = OrderFactory