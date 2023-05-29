
const { CREATED, SuccessResponse } = require("../core/success.response")
const DailyResultDetailsServices = require("../services/daily_results.services")



class DailyResultsControllers {

    createDailyResults = async (req, res, next) => {

        new SuccessResponse({
            message: 'create new product success',
            metadata: await DailyResultDetailsServices.createDailyResults(req.body)
        }).send(res)

    }

    getDailyResults = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get daily_results success',
            metadata: await DailyResultDetailsServices.getDailyResults(req.params)
        }).send(res)
    }

    updateDonVeSinh = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get daily_results success',
            metadata: await DailyResultDetailsServices.updateDonVeSinh(req.body)
        }).send(res)
    }

    updateDonPhatSinh = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get daily_results success',
            metadata: await DailyResultDetailsServices.updateDonPhatSinh(req.body)
        }).send(res)
    }

    updateChamCong = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get daily_results success',
            metadata: await DailyResultDetailsServices.updateChamCong(req.body)
        }).send(res)
    }

}

module.exports = new DailyResultsControllers()