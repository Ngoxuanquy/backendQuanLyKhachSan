const { PrismaClient } = require('@prisma/client')
const { giay_de_nghis } = new PrismaClient()
const prisma = new PrismaClient();


class GiayDeNghiService {

    static async createGiayDeNghi(payload) {
        console.log({ payload })

        const newCreate = await giay_de_nghis.createMany({
            data: {
                user_id: payload.user_id,
                user_name: payload.username,
                business_id: 1,
                phong_ban: 'NVKT',
                type: payload.type,
                status: 'Chưa xác nhận',
                phan_quyen: 'Xem',
                date: new Date(),
                cam_ket: payload.cam_ket,
                noi_dung: payload.noi_dung,
                note: payload.note,
                created_at: new Date(),
            }

        })

        return newCreate
    }


    static async getGiayDeNghi(params) {

        console.log(params.id)
        const get = await giay_de_nghis.findMany({
            where: { user_id: params.id },
        })
        return get
    }


    static async getGiayDeNghiByType(payload) {

        const get = await giay_de_nghis.findMany({
            where: {
                type: payload.type,
                user_id: payload.id
            },
        })
        return get
    }

    static async getGiayDeNghiById(params) {

        const get = await giay_de_nghis.findMany({
            where: {
                id: Number(params.id),
            },
        })
        return get
    }

}

module.exports = GiayDeNghiService