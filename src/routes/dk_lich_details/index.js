const express = require('express')
const asyncHandler = require('../../helpers/asyncHandle')
const { authenticationV2 } = require('../../auth/authUtils')
const DkLichDetailsController = require('../../controllers/dk_lich_details.controller')

const router = express.Router()


// authentication

router.use(authenticationV2)

router.post('/create', asyncHandler(DkLichDetailsController.createDkLichDetails))
router.post('/getbyId/:id', asyncHandler(DkLichDetailsController.getDkLichDetails))
router.post('/get/:id', asyncHandler(DkLichDetailsController.getDkLichLv))


module.exports = router