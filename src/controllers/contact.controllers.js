
const { CREATED, SuccessResponse } = require("../core/success.response")
const ContactServices = require("../services/contact.services")



class ContactControllers {

    createContacts = async (req, res, next) => {

        new SuccessResponse({
            message: 'create new product success',
            metadata: await ContactServices.createCustomer(req.body)
        }).send(res)


    }

    getContacts = async (req, res, next) => {

        console.log(req.user)

        console.log(Date.now())
        console.log(new Date().getTime())


        new SuccessResponse({
            message: 'Get product success',
            metadata: await ContactServices.getContact(req.user)
        }).send(res)
    }

}

module.exports = new ContactControllers()