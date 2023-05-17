
const { CREATED, SuccessResponse } = require("../core/success.response")
const OrderHistoryService = require("../services/order_history.services")



class OrderHistoryControllers {

    createOrderHistory = async (req, res, next) => {

        new SuccessResponse({
            message: 'create new product success',
            metadata: await OrderHistoryService.createOrderHistory(req.body)
        }).send(res)
    }


    getOrderHistory = async (req, res, next) => {

        console.log(req.params)

        new SuccessResponse({
            message: 'Get product success',
            metadata: await OrderHistoryService.getOrderHistory(req.params)
        }).send(res)
    }

    updateOrderHistory = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get product success',
            metadata: await OrderHistoryService.updateOrderHistory(req.params)
        }).send(res)
    }



}

module.exports = new OrderHistoryControllers()