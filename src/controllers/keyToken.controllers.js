
const { CREATED, SuccessResponse } = require("../core/success.response")
const KeyTokenServices = require("../services/KeyToken.services")



class KeyTokenControllers {

    keyID = async (req, res, next) => {

        console.log(req.params.id)

        new SuccessResponse({
            message: 'create new product success',
            metadata: await KeyTokenServices.keyUsers(req.params.id)
        }).send(res)


    }

}

module.exports = new KeyTokenControllers()