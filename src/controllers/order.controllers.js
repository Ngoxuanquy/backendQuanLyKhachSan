
const { CREATED, SuccessResponse } = require("../core/success.response")
const OrderServices = require("../services/order.services")



class OrderControllers {

    createOrder = async (req, res, next) => {

        console.log(req.body)

        new SuccessResponse({
            message: 'create new product success',
            metadata: await OrderServices.createOrder(req.body)
        }).send(res)
    }

    getOrders = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get order success',
            metadata: await OrderServices.getOrder(req.user)
        }).send(res)
    }


}

module.exports = new OrderControllers()