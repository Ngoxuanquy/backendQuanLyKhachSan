const {
    BadRequestError,
    AuthFailureError,
    ForbiddenError,
} = require('../core/error.response.js');
const { PrismaClient } = require('@prisma/client');
const { users } = new PrismaClient();
const { removeUndefinedObject } = require('../utils/index.js');
const { connection, query } = require('../dbs/init.sql.js');
const nodemailer = require('nodemailer');
// define Factory class to create product
class UserFactory {
    static async create(payload) {
        let transporter = nodemailer.createTransport({
            service: 'gmail',
            auth: {
                user: 'ngoxuanquy1812@gmail.com',
                pass: 'kmlqpealznznpupz',
            },
        });

        const emailContent = `
        Kính gửi <b> ${payload.TenKH} </b>, 

        Chúng tôi xin trân trọng thông báo rằng đơn đặt phòng của bạn đã được xác nhận thành công tại QTT. <br />

            Thông tin đặt phòng của bạn như sau: <br />

            Ngày nhận phòng: <b> ${payload.NgayThue} </b> <br />
            Ngày trả phòng: <b> ${payload.NgayTra} </b><br />
            Loại phòng: [Loại phòng] <br />
            Số lượng khách: [Số lượng người lớn], [Số lượng trẻ em] <br />
            Ghi chú đặc biệt: không <br />
            Chi tiết về giá cả và các dịch vụ phụ trợ sẽ được cung cấp trong email xác nhận chi tiết sau này.<br />
<br />
            Nếu có bất kỳ thắc mắc nào hoặc bạn cần hỗ trợ bổ sung, vui lòng liên hệ với chúng tôi qua số điện thoại ${payload.Phone} hoặc email ${payload.Email}.<br />
<br />
            Chúng tôi rất mong đợi được chào đón bạn tại QTT!<br />
<br />
            Trân trọng,<br />
            Quy<br />
            Ngô Xuân Quy<br />
        `;

        try {
            const newData = {
                TenKH: payload.TenKH,
                SoDT: payload.Phone,
                NgaySinh: payload.NgaySinh,
                NgayThue: payload.NgayThue,
                NgayTra: payload.NgayTra,
                MaPhong: payload.MaPhong,
                // Add other columns and corresponding values here if needed
            };

            // Perform the INSERT operation
            const value = await new Promise((resolve, reject) => {
                connection.query(
                    'INSERT INTO khachhang SET ?',
                    newData,
                    async (error, results, fields) => {
                        if (error) {
                            console.error('Error while inserting data:', error);
                            reject('không thành công');
                            return;
                        }
                        try {
                            const info = await transporter.sendMail({
                                from: 'ngoxuanquy1812@gmail.com', // sender address
                                to: payload.Email, // Ensure payload.Email contains a valid email address
                                subject:
                                    'Xác nhận đã đặt phòng tại khách sạn QTT ✔', // Subject line
                                text: emailContent, // plain text body
                                html: emailContent, // html body
                            });
                            resolve({
                                mes: 'Thêm khách hàng thành công',
                            });
                        } catch (mailError) {
                            console.error(
                                'Error while sending email:',
                                mailError,
                            );
                        }
                    },
                );
            });

            return value;
        } catch (error) {
            console.log(error);
            // Handle error properly, maybe throw it if necessary
            throw error;
        }
    }

    static async GetUsers(payload) {
        const userId = await users.findMany({
            select: {
                id: true,
            },
        });
        return userId;
    }
}

module.exports = UserFactory;
