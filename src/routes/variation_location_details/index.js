
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const VariationLocationDetailsControllers = require('../../controllers/variation_location_details.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


// authentication

router.use(authenticationV2)

router.post('/create', asyncHandler(VariationLocationDetailsControllers.createVariationLocationDetails))
router.post('/get/:id', asyncHandler(VariationLocationDetailsControllers.getVariationLocationDetails))
router.post('/update', asyncHandler(VariationLocationDetailsControllers.updateVariationLocationDetails))




module.exports = router