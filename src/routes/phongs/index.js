const express = require('express');
const PhongControllers = require('../../controllers/phongs.controllers');

const router = express.Router();

// authentication

// router.use(authenticationV2)

router.get('/getFullPhongs', PhongControllers.getPhong);
router.post('/update/:id', PhongControllers.UpdateUser);

module.exports = router;
