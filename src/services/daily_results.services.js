

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
                type: 'your_type_value',
                ca: 'your_ca_value',
                ngay: new Date(),
                so_cong: 0,
                bac_luong: 'your_bac_luong_value',
                luong_cb: 0,
                doanh_so: 0,
                doanh_so_yc: 0,
                so_don_yc: 0,
                tb_don_yc: 0,
                ds_ban_may: 0,
                don_ban_may: 0,
                don_ps: 0,
                don_vs: 0,
                thuong: 0,
                phat: 0,
                chiet_khau: 0,
                don_them: 0,
                thu_nhap_ngay: 0
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

    static async updateDonVeSinh(payload) {

        console.log(payload.DonVs);

        const ngayHienTai = new Date();
        const year = ngayHienTai.getFullYear();
        const month = String(ngayHienTai.getMonth() + 1).padStart(2, '0');
        const day = String(ngayHienTai.getDate()).padStart(2, '0');
        const ngayHienTaiString = `${year}-${month}-${day}`;
        const ngay = new Date(ngayHienTaiString);

        const Get_product = await daily_results.updateMany({
            data: {
                don_vs: {
                    increment: Number(payload.DonVs) + 1 // Increment the value of don_vs by 1
                }
            },
            where: {
                user_id: Number(payload.id),
                ngay: {
                    equals: ngay
                }
            }
        });

        return Get_product;

    }

    static async updateDonPhatSinh(payload) {

        const ngayHienTai = new Date(); // Lấy ngày hiện tại

        const year = ngayHienTai.getFullYear(); // Lấy năm hiện tại
        const month = String(ngayHienTai.getMonth() + 1).padStart(2, '0'); // Lấy tháng hiện tại (phải thêm 1 vì tháng bắt đầu từ 0)
        const day = String(ngayHienTai.getDate()).padStart(2, '0'); // Lấy ngày hiện tại

        const ngayHienTaiString = `${year}-${month}-${day}`; // Tạo chuỗi đại diện cho ngày hiện tại

        const ngay = new Date(ngayHienTaiString);

        const Get_product = await daily_results.updateMany({
            data: {
                don_ps: Number(payload.donPs) + 1,
                doanh_so: Number(payload.doanhso)
            },
            where: {
                user_id: Number(payload.id),
                ngay: {
                    equals: ngay, // Sử dụng đối tượng DateTime trong DateTimeNullableFilter
                },
            }
        })

        return Get_product;

    }

    static async updateChamCong(payload) {

        const ngayHienTai = new Date(); // Lấy ngày hiện tại

        const year = ngayHienTai.getFullYear(); // Lấy năm hiện tại
        const month = String(ngayHienTai.getMonth() + 1).padStart(2, '0'); // Lấy tháng hiện tại (phải thêm 1 vì tháng bắt đầu từ 0)
        const day = String(ngayHienTai.getDate()).padStart(2, '0'); // Lấy ngày hiện tại

        const ngayHienTaiString = `${year}-${month}-${day}`; // Tạo chuỗi đại diện cho ngày hiện tại

        const ngay = new Date(ngayHienTaiString);

        const Get_product = await daily_results.updateMany({
            data: {
                so_cong: Number(payload.SoCong) + 0.5,

            },
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


module.exports = DailyResultsFactory