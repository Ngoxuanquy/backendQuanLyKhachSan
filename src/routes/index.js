
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
router.use('/v1/api/transactions', require('./transactions'))
router.use('/v1/api/transactions_sell_line', require('./transationsellline'))
router.use('/v1/api/orderhistory', require('./order_history'))
router.use('/v1/api/orderimages', require('./order_images'))
router.use('/v1/api/ordercomment', require('./comments'))
router.use('/v1/api/acceptdailyresultdetails', require('./accept_daily_result_details'))
router.use('/v1/api/chamcong', require('./chamcong'))
router.use('/v1/api/daily_results', require('./daily_results'))






router.use('/v1/api/user', require('./users'))






// router.use('/', (req, res, next) => {
//     return res.status(200).json({
//         message: 'Hello'
//     })
// })

module.exports = router