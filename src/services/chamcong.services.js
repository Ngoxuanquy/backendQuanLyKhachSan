

const { BadRequestError, AuthFailureError, ForbiddenError } = require("../core/error.response.js")
const { PrismaClient } = require('@prisma/client');
const { cham_cong_users } = new PrismaClient();

// define Factory class to create product
class ChamCongFactory {

    static async createChamCongSangVao(payload) {
        const date = new Date();

        const day = date.getDate();
        const month = date.getMonth() + 1; // Tháng trong JavaScript được đánh số từ 0 đến 11, nên cần cộng thêm 1.
        const year = date.getFullYear();
        const ngay = day + "/" + month + "/" + year

        var currentDate = new Date();


        // console.log(ngay)
        const cham_cong = await cham_cong_users.create({
            data: {
                user_id: Number(payload.id),
                business_id: Number(payload.business_id),
                day: ngay,
                vao_sang: new Date(currentDate.getTime() + 7 * 60 * 60 * 1000),
                created_at: new Date(),
                updated_at: new Date()
            }
        });

        return cham_cong;

    }


    static async createChamCongSangRa(payload) {
        var currentDate = new Date();

        console.log(payload)
        const cham_cong = await cham_cong_users.updateMany({
            data: {
                ra_sang: new Date(currentDate.getTime() + 7 * 60 * 60 * 1000)
            },
            where: {
                user_id: Number(payload.id),
                created_at: payload.create
            }
        });

        return cham_cong;

    }


    static async createChamCongChieuVao(payload) {
        var currentDate = new Date();

        const cham_cong = await cham_cong_users.updateMany({
            data: {
                vao_chieu: new Date(currentDate.getTime() + 7 * 60 * 60 * 1000)
            },
            where: {
                user_id: Number(payload.id),
                created_at: payload.create
            }
        });

        return cham_cong;

    }

    static async createChamCongChieuRa(payload) {
        var currentDate = new Date();

        const cham_cong = await cham_cong_users.updateMany({
            data: {
                ra_chieu: new Date(currentDate.getTime() + 7 * 60 * 60 * 1000)
            },
            where: {
                user_id: Number(payload.id),
                created_at: payload.create
            }
        });

        return cham_cong;

    }


    static async getChamCong(decode) {

        const date = new Date();

        const day = date.getDate();
        const month = date.getMonth() + 1; // Tháng trong JavaScript được đánh số từ 0 đến 11, nên cần cộng thêm 1.
        const year = date.getFullYear();
        const ngay = day + "/" + month + "/" + year

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 2; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await cham_cong_users.findMany({
            skip,
            take,
            where: {
                user_id: Number(decode.id),
                day: ngay
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


module.exports = ChamCongFactory