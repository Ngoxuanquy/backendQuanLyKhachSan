
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

    getOrdersPending = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get order success',
            metadata: await OrderServices.getOrderPending(req.params)
        }).send(res)
    }

    updateOrders = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get order success',
            metadata: await OrderServices.UpdateOrder(req.params)
        }).send(res)
    }

    updateOrdersAction = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get order success',
            metadata: await OrderServices.updateOrdersAction(req.params)
        }).send(res)
    }


    getOrdersAcction = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get order success',
            metadata: await OrderServices.getOrderAcction(req.params)
        }).send(res)
    }

    getOrdersDone = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get order success',
            metadata: await OrderServices.getOrderDone(req.params)
        }).send(res)
    }

    getOrderById = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get order success',
            metadata: await OrderServices.getOrderById(req.params)
        }).send(res)
    }


}

module.exports = new OrderControllers()