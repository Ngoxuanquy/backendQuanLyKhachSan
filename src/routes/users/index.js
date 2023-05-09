
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const UserControllers = require('../../controllers/user.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


// authentication

router.use(authenticationV2)


router.post('/update/:id', asyncHandler(UserControllers.UpdateUser))



module.exports = router