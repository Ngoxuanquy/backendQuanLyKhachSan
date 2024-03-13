const express = require('express');
const phongControllers = require('../../controllers/phongs.controllers');

const router = express.Router();

// authentication

// router.use(authenticationV2)

router.get('/getFullPhongs', phongControllers.getPhong);
router.post('/update/:id', phongControllers.UpdateUser);

module.exports = router;
