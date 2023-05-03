
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const ContactControllers = require('../../controllers/contact.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


// authentication

router.use(authenticationV2)

router.post('/create', asyncHandler(ContactControllers.createCustomer))
router.post('/get', asyncHandler(ContactControllers.getContacts))



module.exports = router