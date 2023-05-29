const DonXinNghiPheps = require('../services/don_xin_nghi_pheps.service')
const { CREATED, SuccessResponse } = require('../core/success.response')

class TransactionPaymentController {
    createDonXinNghiPheps = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await DonXinNghiPheps.createDonXinNghiPheps(req.body),
        }).send(res)
    }

    getDonXinNghiPheps = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await DonXinNghiPheps.getDonXinNghiPheps(req.params),
        }).send(res)
    }

    getDonXinNghiPhepById = async (req, res, next) => {
        console.log(req.params)
        new SuccessResponse({
            message: 'Create success',
            metadata: await DonXinNghiPheps.getDonXinNghiPhepsById(req.params),
        }).send(res)
    }

}

module.exports = new TransactionPaymentController()