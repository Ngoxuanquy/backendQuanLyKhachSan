
const { CREATED, SuccessResponse } = require("../core/success.response")
const DailyResultDetailsServices = require("../services/accept_daily_result_details.services")



class DailyResultDetailsControllers {

    createDailyResultDetails = async (req, res, next) => {

        new SuccessResponse({
            message: 'create new product success',
            metadata: await DailyResultDetailsServices.createDailyResultDetails(req.body)
        }).send(res)

    }

    getDailyResultDetails = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get product success',
            metadata: await DailyResultDetailsServices.getDailyResultDetails(req.params)
        }).send(res)
    }

}

module.exports = new DailyResultDetailsControllers()