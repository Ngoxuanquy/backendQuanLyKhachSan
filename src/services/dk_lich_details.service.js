const { PrismaClient } = require('@prisma/client')

const { dk_lich_details } = new PrismaClient()
const prisma = new PrismaClient();


class DkLichDetailsService {

    static async createDkLichDetails(payload) {
        // console.log(payload);a
        const newDonXinNghiPheps = [];

        for (const item of payload.arr) {

            const dateParts = item.isWeekend.split(', ')[1].split('/');
            const year = parseInt(dateParts[2]);
            const month = parseInt(dateParts[1]) - 1; // JavaScript months are zero-based
            const day = parseInt(dateParts[0]);

            const newDonXinNghiPhep = await dk_lich_details.createMany({
                data: {
                    user_id: Number(payload.user_id),
                    dk_lich_id: payload.dk_lich_id,
                    type: 'type',
                    date: new Date(year, month, day),
                    name: 'yourNameValue',
                    status: 'status',
                    sang: item.sang.toString(),
                    chieu: item.chieu.toString(),
                    toi: "fasle",
                },
            }).catch((error) => {
                console.error(error);
                process.exit(1);
            });

            newDonXinNghiPheps.push(newDonXinNghiPhep);
        }

        await prisma.$disconnect();
        return newDonXinNghiPheps;
    }




    static async getDkLichDetails(params) {
        const get = await dk_lich_details.findMany({
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

module.exports = DkLichDetailsService