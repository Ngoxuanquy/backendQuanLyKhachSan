const { PrismaClient } = require('@prisma/client')

const { dk_lich_lv } = new PrismaClient()
const prisma = new PrismaClient();
const { getIntoData } = require("../utils")


class DkLichLvService {

    static createDkLichLv = async (payload) => {

        // const fromDateParts = payload.from_date.split('/');
        // const fromDate = new Date(fromDateParts[0], fromDateParts[1], fromDateParts[2]);
        // const toDateParts = payload.to_date.split('/');
        // const toDate = new Date(toDateParts[0], toDateParts[1], toDateParts[2]);

        const newCreate = await dk_lich_lv.create({
            data: {

                business_id: 5,
                user_id: Number(payload.user_id),
                user_name: payload.user_name,
                phan_quyen: payload.phan_quyen,
                phong_ban: payload.phong_ban,
                status: payload.status,
                from_date: payload.from_date,
                to_date: payload.to_date,
                date: new Date(),

            }
        })
        return {
            status: 201,
            dk_lich_kv: getIntoData({ fileds: ['id', 'user_id'], object: newCreate }),
        }
    }


    static async getDkLichLv(params) {
        const get = await dk_lich_lv.findMany({
            where: { user_id: Number(params.id), },
        })
        return get
    }

    // static async getDkLichLv(params) {
    //     const get = await don_xin_nghi_pheps.findMany({
    //         where: { id: Number(params.id), },
    //     })
    //     return get
    // }


}

module.exports = DkLichLvService