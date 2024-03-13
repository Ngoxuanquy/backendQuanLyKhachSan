const { CREATED, SuccessResponse } = require('../core/success.response');
const PhongService = require('../services/phongs.service');

class phongControllers {
    UpdateUser = async (req, res, next) => {
        new SuccessResponse({
            message: 'Update product success',
            metadata: await PhongService.UpdateUsers(req.body),
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
