
const express = require('express');
const { apiKey, permission } = require('../auth/checkAuth');

const router = express.Router();

//check api
router.use(apiKey)

//check permission
router.use(permission('0000'))

router.use('/v1/api', require('./access'))
router.use('/v1/api/product', require('./product'))
router.use('/v1/api/orders', require('./orders'))
router.use('/v1/api/keyUers', require('./keyToken'))
router.use('/v1/api/contacts', require('./contacts'))





// router.use('/', (req, res, next) => {
//     return res.status(200).json({
//         message: 'Hello'
//     })
// })

module.exports = router