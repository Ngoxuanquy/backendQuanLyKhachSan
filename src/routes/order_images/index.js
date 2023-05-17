
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const OrderimagesControllers = require('../../controllers/order_images.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


// authentication

router.use(authenticationV2)

router.post('/create', asyncHandler(OrderimagesControllers.createImages))
router.post('/get', asyncHandler(OrderimagesControllers.getImages))



module.exports = router