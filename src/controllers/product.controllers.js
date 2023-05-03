
const { CREATED, SuccessResponse } = require("../core/success.response")
const ProductService = require("../services/product.services")



class ProductControllers {

    createProduct = async (req, res, next) => {

        new SuccessResponse({
            message: 'create new product success',
            metadata: await ProductService.createProduct(req.body)
        }).send(res)
    }


    getProduct = async (req, res, next) => {

        console.log(req.user)

        console.log(Date.now())
        console.log(new Date().getTime())


        new SuccessResponse({
            message: 'Get product success',
            metadata: await ProductService.getProduct(req.user)
        }).send(res)
    }


}

module.exports = new ProductControllers()