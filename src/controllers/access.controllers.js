const AccessService = require('../services/access.services');
const { CREATED, SuccessResponse } = require('../core/success.response');

class AccessControllers {
    handlerRefreshToken = async (req, res, next) => {
        // VS1
        // new SuccessResponse({
        //     message: 'get token success',
        //     metadata: await AccessService.HandlerRefreshToken(req.body.refeshToken),
        // }).send(res)

        //VS2
        new SuccessResponse({
            message: 'get token success',
            metadata: await AccessService.HandlerRefreshTokenV2({
                refeshToken: req.refeshToken,
                user: req.user,
                keyStore: req.keyStore[0],
            }),
        }).send(res);
    };

    logout = async (req, res, next) => {
        console.log(req.user);

        new SuccessResponse({
            message: 'Logout success',
            metadata: await AccessService.logout(req.keyStore, req.user),
        }).send(res);
    };

    login = async (req, res, next) => {
        new SuccessResponse({
            metadata: await AccessService.login(req.body),
        }).send(res);
    };

    signUp = async (req, res, next) => {
        new CREATED({
            message: 'Register OK',
            metadata: await AccessService.signUp(req.body),
        }).send(res);

        // return res.status(201).json(await AccessService.signUp(req.body))
    };
}

module.exports = new AccessControllers();
