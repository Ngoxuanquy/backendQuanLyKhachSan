const { CREATED, SuccessResponse } = require('../core/success.response');
const PhongService = require('../services/phongs.service');

class phongControllers {
    getPhongId = async (req, res, next) => {
        new SuccessResponse({
            message: 'get phong success',
            metadata: await PhongService.getPhongId(req.params),
        }).send(res);
    };

    getPhong = async (req, res, next) => {
        new SuccessResponse({
            message: 'gett product success',
            metadata: await PhongService.getPhong(req.body),
        }).send(res);
    };
}

module.exports = new phongControllers();
