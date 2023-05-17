
const { CREATED, SuccessResponse } = require("../core/success.response")
const OrderimagesServices = require("../services/order_images.services")



class ContactControllers {

    createImages = async (req, res, next) => {
        console.log('a')
        new SuccessResponse({
            message: 'create new product success',
            metadata: await OrderimagesServices.createImages(req.body)
        }).send(res)

    }

    getImages = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get product success',
            metadata: await OrderimagesServices.getImages(req.params)
        }).send(res)
    }

}

module.exports = new ContactControllers()