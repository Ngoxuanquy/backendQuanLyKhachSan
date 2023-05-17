
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const ChamCongControllers = require('../../controllers/chamcong.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


// authentication

router.use(authenticationV2)

router.post('/create/sangvao', asyncHandler(ChamCongControllers.createChamCongSangVao))
router.post('/create/sangra', asyncHandler(ChamCongControllers.createChamCongSangRa))
router.post('/create/chieuvao', asyncHandler(ChamCongControllers.createChamCongChieuVao))
router.post('/create/chieura', asyncHandler(ChamCongControllers.createChamCongChieuRa))

router.post('/get/:id', asyncHandler(ChamCongControllers.getChamCong))



module.exports = router