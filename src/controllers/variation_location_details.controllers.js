
const { CREATED, SuccessResponse } = require("../core/success.response")
const VariationLocationDetailsServices = require("../services/variation_location_details.services")



class VariationLocationDetailsControllers {

    createVariationLocationDetails = async (req, res, next) => {

        new SuccessResponse({
            message: 'create new product success',
            metadata: await VariationLocationDetailsServices.createVariationLocationDetailsServices(req.body)
        }).send(res)

    }

    getVariationLocationDetails = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get product success',
            metadata: await VariationLocationDetailsServices.getVariationLocationDetailsServices(req.params)
        }).send(res)
    }

    updateVariationLocationDetails = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get product success',
            metadata: await VariationLocationDetailsServices.updateInventoryProducts(req.body)
        }).send(res)
    }

}

module.exports = new VariationLocationDetailsControllers()