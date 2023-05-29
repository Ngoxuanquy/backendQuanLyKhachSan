
const { CREATED, SuccessResponse } = require("../core/success.response")
const ChamCongServices = require("../services/chamcong.services")



class ChamCongControllers {

    createChamCongSangVao = async (req, res, next) => {
        new SuccessResponse({
            message: 'create new product success',
            metadata: await ChamCongServices.createChamCongSangVao(req.body)
        }).send(res)
    }

    createChamCongSangRa = async (req, res, next) => {
        console.log(req.body)
        new SuccessResponse({
            message: 'create new product success',
            metadata: await ChamCongServices.createChamCongSangRa(req.body)
        }).send(res)
    }

    createChamCongChieuVao = async (req, res, next) => {
        new SuccessResponse({
            message: 'create new product success',
            metadata: await ChamCongServices.createChamCongChieuVao(req.body)
        }).send(res)
    }

    createChamCongChieuRa = async (req, res, next) => {
        new SuccessResponse({
            message: 'create new product success',
            metadata: await ChamCongServices.createChamCongChieuRa(req.body)
        }).send(res)
    }

    getChamCong = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get product success',
            metadata: await ChamCongServices.getChamCong(req.params)
        }).send(res)
    }

}

module.exports = new ChamCongControllers()