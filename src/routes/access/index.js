const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const AccessControllers = require('../../controllers/access.controllers');
const { authentication, authenticationV2 } = require('../../auth/authUtils');

const router = express.Router();

//signup
router.post('/signup', AccessControllers.signUp);

module.exports = router;
