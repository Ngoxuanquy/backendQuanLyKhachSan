const { CREATED, SuccessResponse } = require('../core/success.response');
const UserService = require('../services/users.service');

class UserControllers {
    create = async (req, res, next) => {
        new SuccessResponse({
            message: 'create product success',
            metadata: await UserService.create(req.body),
        }).send(res);
    };

    getUserId = async (req, res, next) => {
        new SuccessResponse({
            message: 'Update product success',
            metadata: await UserService.GetUsers(req.body),
        }).send(res);
    };
}

module.exports = new UserControllers();
