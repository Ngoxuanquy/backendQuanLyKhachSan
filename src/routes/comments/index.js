
const express = require('express');
const asyncHandler = require('../../helpers/asyncHandle');
const CommentControllers = require('../../controllers/comment.controllers')
const { authentication, authenticationV2 } = require('../../auth/authUtils')

const router = express.Router();


// authentication

router.use(authenticationV2)

router.post('/create', asyncHandler(CommentControllers.createComment))
router.post('/get', asyncHandler(CommentControllers.getComment))



module.exports = router