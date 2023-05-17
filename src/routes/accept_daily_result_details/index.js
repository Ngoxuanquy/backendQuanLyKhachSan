
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const DailyResultDetailsControllers = require('../../controllers/dailyresultdetails.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


// authentication

router.use(authenticationV2)

router.post('/create', asyncHandler(DailyResultDetailsControllers.createDailyResultDetails))
router.post('/get/:id', asyncHandler(DailyResultDetailsControllers.getDailyResultDetails))



module.exports = router