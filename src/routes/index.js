const express = require('express');
// const { apiKey, permission } = require('../auth/checkAuth');

const router = express.Router();

//check api
// router.use(apiKey);

//check permission
// router.use(permission('0000'));

router.use('/v1/api', require('./access'));

router.use('/v1/api/phong', require('./phongs'));

router.use('/v1/api/user', require('./users'));

module.exports = router;
