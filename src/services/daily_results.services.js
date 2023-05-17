

const { BadRequestError, AuthFailureError, ForbiddenError } = require("../core/error.response.js")
const { PrismaClient } = require('@prisma/client');
const { daily_results } = new PrismaClient();

// define Factory class to create product
class DailyResultsFactory {

    static async createDailyResults(payload) {

        console.log(payload)

        const product = await daily_results.create({
            data: {
                user_id: Number(payload.user_id),
                business_id: 1,
                type: "your_type_value",
                ca: "your_ca_value",
                ngay: new Date(),
                so_cong: 1.5,
                bac_luong: "your_bac_luong_value",
                luong_cb: 1000,
                doanh_so: 5000,
                doanh_so_yc: 6000,
                so_don_yc: 2.5,
                tb_don_yc: 200,
                ds_ban_may: 100,
                don_ban_may: 50,
                don_ps: 30,
                don_vs: 20,
                thuong: 100,
                phat: 50,
                chiet_khau: 50,
                don_them: 10,
                thu_nhap_ngay: 1000
            }
        });

        return product;

    }



    static async getDailyResults(payload) {

        const ngayHienTai = new Date(); // Lấy ngày hiện tại

        const year = ngayHienTai.getFullYear(); // Lấy năm hiện tại
        const month = String(ngayHienTai.getMonth() + 1).padStart(2, '0'); // Lấy tháng hiện tại (phải thêm 1 vì tháng bắt đầu từ 0)
        const day = String(ngayHienTai.getDate()).padStart(2, '0'); // Lấy ngày hiện tại

        const ngayHienTaiString = `${year}-${month}-${day}`; // Tạo chuỗi đại diện cho ngày hiện tại

        console.log(ngayHienTaiString)

        const ngay = new Date(ngayHienTaiString);

        const pageNumber = 1; // Số trang muốn lấy
        const perPage = 2; // Số bản ghi trên mỗi trang

        const skip = (pageNumber - 1) * perPage; // Số bản ghi muốn bỏ qua
        const take = perPage; // Số bản ghi muốn lấy

        const Get_product = await daily_results.findMany({
            skip,
            take,
            where: {
                user_id: Number(payload.id),
                ngay: {
                    equals: ngay, // Sử dụng đối tượng DateTime trong DateTimeNullableFilter
                },
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


module.exports = DailyResultsFactory