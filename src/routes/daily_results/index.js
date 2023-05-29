
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const DailyResultsControllers = require('../../controllers/daily_results.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


// authentication

router.use(authenticationV2)

router.post('/create', asyncHandler(DailyResultsControllers.createDailyResults))
router.post('/get/:id', asyncHandler(DailyResultsControllers.getDailyResults))
router.post('/update/donvesinh', asyncHandler(DailyResultsControllers.updateDonVeSinh))
router.post('/update/donphatsinh', asyncHandler(DailyResultsControllers.updateDonPhatSinh))
router.post('/update/chamcong', asyncHandler(DailyResultsControllers.updateChamCong))





module.exports = router