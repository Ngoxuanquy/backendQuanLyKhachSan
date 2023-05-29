const TransactionPayment = require('../services/transaction_payments.service')
const { CREATED, SuccessResponse } = require('../core/success.response')

class TransactionPaymentController {
    createTransactionPayment = async (req, res, next) => {

        console.log(req.body)

        new SuccessResponse({
            message: 'Create success',
            metadata: await TransactionPayment.createTransactionPayment(req.body),
        }).send(res)
    }

    getTransactionPayment = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await TransactionPayment.getTransactionPayment(req.params),
        }).send(res)
    }


}

module.exports = new TransactionPaymentController()