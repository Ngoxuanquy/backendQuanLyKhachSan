
const { CREATED, SuccessResponse } = require("../core/success.response")
const ProductService = require("../services/product.services")



class ProductControllers {

    createProduct = async (req, res, next) => {

        console.log(req.body)
        new SuccessResponse({
            message: 'create new product success',
            metadata: await ProductService.createProduct(req.body)
        }).send(res)


    }

}

module.exports = new ProductControllers()