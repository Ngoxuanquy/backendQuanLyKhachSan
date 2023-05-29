const { PrismaClient } = require('@prisma/client')

const { don_xin_nghi_pheps } = new PrismaClient()
const prisma = new PrismaClient();


class DonXinNghiPhepsService {

    static async createDonXinNghiPheps(payload) {



        const fromDateParts = payload.from_date.split('/');
        const fromDate = new Date(fromDateParts[0], fromDateParts[1], fromDateParts[2]);


        const toDateParts = payload.to_date.split('/');
        const toDate = new Date(toDateParts[0], toDateParts[1], toDateParts[2]);
        const newDonXinNghiPheps = await don_xin_nghi_pheps.createMany({
            data: {
                user_id: Number(payload.user_id),
                user_name: payload.username,
                business_id: 5,
                type: payload.type, // Provide the appropriate value for the type argument
                status: 'Chưa xác nhận', // Provide the appropriate value for the status argument
                from_date: fromDate, // Provide the appropriate value for the from_date argument
                to_date: toDate, // Provide the appropriate value for the to_date argument
                cam_ket: payload.cam_ket,
                note: payload.note,
                cv_ban_giao: payload.cv_ban_giao,
                ban_giao_cv: payload.ban_giao_cv
            }

        })

        return newDonXinNghiPheps
    }


    static async getDonXinNghiPheps(params) {

        const get = await don_xin_nghi_pheps.findMany({
            where: { user_id: Number(params.id), },

        })

        return get
    }

    static async getDonXinNghiPhepsById(params) {

        const get = await don_xin_nghi_pheps.findMany({
            where: { id: Number(params.id), },

        })

        return get
    }


}

module.exports = DonXinNghiPhepsService