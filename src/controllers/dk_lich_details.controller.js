const DkLichDetails = require('../services/dk_lich_details.service')
const { CREATED, SuccessResponse } = require('../core/success.response')

class DkLichLvController {
    createDkLichDetails = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await DkLichDetails.createDkLichDetails(req.body),
        }).send(res)
    }

    getDkLichDetails = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await DkLichDetails.getDkLichDetails(req.params),
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