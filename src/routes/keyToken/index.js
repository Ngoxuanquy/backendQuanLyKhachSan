const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const keyTokenControllers = require('../../controllers/keyToken.controllers');
const { authentication, authenticationV2 } = require('../../auth/authUtils');

const router = express.Router();

// authentication

// router.use(authenticationV2)

// router.post('/:id', asyncHandler(keyTokenControllers.keyID))

module.exports = router;
