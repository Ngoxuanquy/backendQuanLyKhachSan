
const _ = require('lodash')

const getIntoData = ({ fileds = [], object = {} }) => {
    return _.pick(object, fileds)
}

const removeUndefinedObject = (obj) => {
    Object.keys(obj).forEach((k) => {
        if (obj[k] === '' || obj[k] === undefined || obj[k] === null) {
            delete obj[k]
        }
    })
    return obj
}

module.exports = {
    getIntoData,
    removeUndefinedObject
}