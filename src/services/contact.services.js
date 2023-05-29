

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
                },
                transactions: true,
                transaction_payments: true
            },

        });

        return contact;
    }

    static async getOrderContactsWithCashPayment(payload) {
        const contact = await contacts.findMany({
            where: {
                id: Number(payload.id), // Sửa thành id thay vì nvkt_id
                transaction_payments: {
                    some: {
                        method: payload.method
                    }
                }
            },
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
                order_histories: true,
                orders: {
                    where: {
                        nvkt_id: Number(payload.id) // Có thể cần sửa đổi điều kiện này dựa trên cấu trúc dữ liệu của bạn
                    }
                },
                transactions: true,
                transaction_payments: {
                    select: {
                        method: true
                    }
                }
            }
        });

        return contact
    }

}


module.exports = ContactFactory