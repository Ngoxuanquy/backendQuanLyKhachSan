const GiayDeNghi = require('../services/giay_de_nghis.service')
const { CREATED, SuccessResponse } = require('../core/success.response')

class GiayDeNghiController {
    createGiayDeNghi = async (req, res, next) => {

        console.log(req.body)

        new SuccessResponse({
            message: 'Create success',
            metadata: await GiayDeNghi.createGiayDeNghi(req.body),
        }).send(res)
    }

    getGiayDeNghi = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await GiayDeNghi.getGiayDeNghi(req.params),
        }).send(res)
    }

    getGiayDeNghiByType = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await GiayDeNghi.getGiayDeNghiByType(req.body),
        }).send(res)
    }

    getGiayDeNghiById = async (req, res, next) => {
        console.log(req.params)
        new SuccessResponse({
            message: 'Create success',
            metadata: await GiayDeNghi.getGiayDeNghiById(req.params),
        }).send(res)
    }

}

module.exports = new GiayDeNghiController()