const DkLichLv = require('../services/dk_lich_lv.service')
const { CREATED, SuccessResponse } = require('../core/success.response')

class DkLichLvController {
    createDkLichLv = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await DkLichLv.createDkLichLv(req.body),
        }).send(res)
    }

    getDkLichLv = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await DkLichLv.getDkLichLv(req.params),
        }).send(res)
    }

    // getDkLichLv = async (req, res, next) => {
    //     console.log(req.params)
    //     new SuccessResponse({
    //         message: 'Create success',
    //         metadata: await DkLichLv.getDkLichLv(req.params),
    //     }).send(res)
    // }

}

module.exports = new DkLichLvController()