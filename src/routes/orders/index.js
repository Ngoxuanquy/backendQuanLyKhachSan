
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const OrderControllers = require('../../controllers/order.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


// authentication

router.use(authenticationV2)

router.post('/create', asyncHandler(OrderControllers.createOrder))
router.post('/get', asyncHandler(OrderControllers.getOrders))



module.exports = router