const express = require('express')
const asyncHandler = require('../../helpers/asyncHandle')
const { authenticationV2 } = require('../../auth/authUtils')
const DkLichLvController = require('../../controllers/dk_lich_lv.controller')

const router = express.Router()


// authentication

router.use(authenticationV2)

router.post('/create', asyncHandler(DkLichLvController.createDkLichLv))
router.post('/getbyId/:id', asyncHandler(DkLichLvController.getDkLichLv))
router.post('/get/:id', asyncHandler(DkLichLvController.getDkLichLv))


module.exports = router