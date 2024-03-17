const express = require('express');
const phongControllers = require('../../controllers/phongs.controllers');

const router = express.Router();

router.get('/getNhanVien', phongControllers.getNhanVien);

module.exports = router;
