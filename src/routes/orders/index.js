
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const OrderControllers = require('../../controllers/order.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


// authentication

router.use(authenticationV2)

router.post('/create', asyncHandler(OrderControllers.createOrder))
router.post('/getpending/:id', asyncHandler(OrderControllers.getOrdersPending))
router.post('/getacction/:id', asyncHandler(OrderControllers.getOrdersAcction))
router.post('/getById/:id', asyncHandler(OrderControllers.getOrderById))
router.post('/update/:id', asyncHandler(OrderControllers.updateOrders))
router.post('/updateaction/:id', asyncHandler(OrderControllers.updateOrdersAction))
router.post('/getorderdone/:id', asyncHandler(OrderControllers.getOrdersDone))





module.exports = router