const TransactionShellLine = require('../services/transition_shell_line.service')
const { CREATED, SuccessResponse } = require('../core/success.response')

class TransactionShellLineController {
    createTransactionShellLine = async (req, res, next) => {

        console.log(req.body)

        new SuccessResponse({
            message: 'Create success',
            metadata: await TransactionShellLine.createTransactionShellLine(req.body),
        }).send(res)
    }

    getTransactionShellLine = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await TransactionShellLine.getTransactionShellLine(req.params),
        }).send(res)
    }


    getTransactionShellLinePOS = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await TransactionShellLine.getPOS(req.params),
        }).send(res)
    }


    updateTransactionShellLine_Cong = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await TransactionShellLine.updateCong(req.body),
        }).send(res)
    }

    updateTransactionShellLine_Tru = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await TransactionShellLine.updateTru(req.body),
        }).send(res)
    }

    delteTransactionShellLine = async (req, res, next) => {
        new SuccessResponse({
            message: 'Create success',
            metadata: await TransactionShellLine.delete(req.body),
        }).send(res)
    }
}

module.exports = new TransactionShellLineController()