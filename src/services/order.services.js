

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

    //update khi nhận đơn
    static async UpdateOrder(payload) {

        console.log(payload)
        let result
        try {
            result = await prisma.$transaction([
                orders.update({
                    data: {
                        status: 0,
                        text_status: 'Đã Xác Nhận'
                    },
                    where: {
                        id: Number(payload.id)
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


    //update khi thanh toán
    static async updateOrdersAction(payload) {

        console.log({ payload })
        let result
        try {
            result = await prisma.$transaction([
                orders.update({
                    data: {
                        status: 0,
                        text_status: 'Đã Thanh Toán'
                    },
                    where: {
                        id: Number(payload.id)
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

    //lấy dữ liệu đơn chờ

    static async getOrderPending(payload) {

        console.log(payload)

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 2; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await orders.findMany({
            skip,
            take,
            include: {
                contacts: true,
            },
            where: {
                text_status: null,
                nvkt_id: Number(payload.id)
            }
        }
        )
        return Get_product;

    }

    //lấy dữ liệu đơn đang thực hiện

    static async getOrderAcction(payload) {

        console.log(payload)

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 2; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await orders.findMany({
            skip,
            take,
            include: {
                contacts: true,
            },
            where: {
                text_status: "Đã Xác Nhận",
                nvkt_id: Number(payload.id)

            }
        }
        )
        return Get_product;

    }

    //lấy đơn đã hoàn thành
    static async getOrderDone(payload) {

        console.log(payload)

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 5; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await orders.findMany({
            skip,
            take,
            include: {
                contacts: true,
            },
            where: {
                text_status: "Đã Thanh Toán",
                nvkt_id: Number(payload.id)

            }
        }
        )
        return Get_product;

    }

    static async getOrderById(payload) {

        const Get_product = await orders.findMany({
            include: {
                contacts: true,
            },
            where: {
                id: Number(payload.id)
            }
        }
        )
        console.log(payload.id)
        return Get_product;

    }

}


module.exports = OrderFactory