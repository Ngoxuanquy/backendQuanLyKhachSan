const express = require('express')
const asyncHandler = require('../../helpers/asyncHandle')
const { authenticationV2 } = require('../../auth/authUtils')
const DonXinNghiPhepsController = require('../../controllers/don_xin_nghi_pheps.controller')

const router = express.Router()

router.post('/create', asyncHandler(DonXinNghiPhepsController.createDonXinNghiPheps))
router.post('/getbyId/:id', asyncHandler(DonXinNghiPhepsController.getDonXinNghiPhepById))
router.post('/get/:id', asyncHandler(DonXinNghiPhepsController.getDonXinNghiPheps))




// authentication

router.use(authenticationV2)

module.exports = router