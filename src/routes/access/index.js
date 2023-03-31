
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const AccessControllers = require('../../controllers/access.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


//signup
router.post('/signup', asyncHandler(AccessControllers.signUp))

router.post('/login', asyncHandler(AccessControllers.login))


// authentication

router.use(authenticationV2)


router.post('/logout', asyncHandler(AccessControllers.logout))
router.post('/handlerRefreshToken', asyncHandler(AccessControllers.handlerRefreshToken))


module.exports = router