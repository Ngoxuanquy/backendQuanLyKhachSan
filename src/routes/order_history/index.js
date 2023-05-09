
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const OrderHistoryControllers = require('../../controllers/orderhistory.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


// authentication

router.use(authenticationV2)

router.post('/create', asyncHandler(OrderHistoryControllers.createOrderHistory))
router.post('/get', asyncHandler(OrderHistoryControllers.getOrderHistory))



module.exports = router