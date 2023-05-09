const express = require('express')
const asyncHandler = require('../../helpers/asyncHandle')
const { authenticationV2 } = require('../../auth/authUtils')
const TransactionShellLineController = require('../../controllers/transition_shell_line.controller')

const router = express.Router()

router.post('/', asyncHandler(TransactionShellLineController.createTransactionShellLine))
router.post('/delete', asyncHandler(TransactionShellLineController.delteTransactionShellLine))
router.post('/updatecong', asyncHandler(TransactionShellLineController.updateTransactionShellLine_Cong))
router.post('/updatetru', asyncHandler(TransactionShellLineController.updateTransactionShellLine_Tru))
router.post('/get/:id', asyncHandler(TransactionShellLineController.getTransactionShellLine))


// authentication

router.use(authenticationV2)

module.exports = router