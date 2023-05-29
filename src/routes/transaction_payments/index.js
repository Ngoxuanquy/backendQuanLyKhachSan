const express = require('express')
const asyncHandler = require('../../helpers/asyncHandle')
const { authenticationV2 } = require('../../auth/authUtils')
const TransactionPaymentController = require('../../controllers/transaction_payments.controller')

const router = express.Router()

router.post('/create', asyncHandler(TransactionPaymentController.createTransactionPayment))
router.post('/get/:id', asyncHandler(TransactionPaymentController.getTransactionPayment))



// authentication

router.use(authenticationV2)

module.exports = router