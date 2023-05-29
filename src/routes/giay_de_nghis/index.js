const express = require('express')
const asyncHandler = require('../../helpers/asyncHandle')
const { authenticationV2 } = require('../../auth/authUtils')
const GiayDeNghiController = require('../../controllers/giay_de_nghis.controller')

const router = express.Router()

router.use(authenticationV2)


router.post('/create', asyncHandler(GiayDeNghiController.createGiayDeNghi))
router.post('/getbyId/:id', asyncHandler(GiayDeNghiController.getGiayDeNghiById))
router.post('/get/:id', asyncHandler(GiayDeNghiController.getGiayDeNghi))
router.post('/getbytype', asyncHandler(GiayDeNghiController.getGiayDeNghiByType))





// authentication


module.exports = router