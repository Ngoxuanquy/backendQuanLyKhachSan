
const { CREATED, SuccessResponse } = require("../core/success.response")
const TransactionService = require("../services/transactions.services")



class TransactionsControllers {

    createTransactions = async (req, res, next) => {
        console.log(req.body)
        new SuccessResponse({
            message: 'create new product success',
            metadata: await TransactionService.createTransaction(req.body)
        }).send(res)
    }


    getTransaction = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get product success',
            metadata: await TransactionService.getTransaction(req.user)
        }).send(res)
    }

    getTransactionByConcactId = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get Transaction success',
            metadata: await TransactionService.SelectTransactionByConcactId(req.params)
        }).send(res)
    }
    updateTransaction = async (req, res, next) => {

        new SuccessResponse({
            message: 'Get product success',
            metadata: await TransactionService.updateTransaction(req.body)
        }).send(res)
    }

}

module.exports = new TransactionsControllers()