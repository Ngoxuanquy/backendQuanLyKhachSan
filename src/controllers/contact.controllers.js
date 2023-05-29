
const { CREATED, SuccessResponse } = require("../core/success.response")
const ContactServices = require("../services/contact.services")



class CommentControllers {

    createComment = async (req, res, next) => {

        new SuccessResponse({
            message: 'create new product success',
            metadata: await ContactServices.createComment(req.body)
        }).send(res)

    }

    getContacts = async (req, res, next) => {
        new SuccessResponse({
            message: 'Get product success',
            metadata: await ContactServices.getComment(req.user)
        }).send(res)
    }

    getOrderContact = async (req, res, next) => {
        new SuccessResponse({
            message: 'Get concats success',
            metadata: await ContactServices.getOrderContacts(req.params)
        }).send(res)
    }

    getOrderContactByHTTT = async (req, res, next) => {
        new SuccessResponse({
            message: 'Get concats success',
            metadata: await ContactServices.getOrderContactsWithCashPayment(req.body)
        }).send(res)
    }
}

module.exports = new CommentControllers()