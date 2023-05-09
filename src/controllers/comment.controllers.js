
const { CREATED, SuccessResponse } = require("../core/success.response")
const CommentServices = require("../services/comment.services")



class ContactControllers {

    createComment = async (req, res, next) => {

        new SuccessResponse({
            message: 'create new product success',
            metadata: await CommentServices.createComment(req.body)
        }).send(res)

    }

    getComment = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get product success',
            metadata: await CommentServices.getComment(req.user)
        }).send(res)
    }

}

module.exports = new ContactControllers()