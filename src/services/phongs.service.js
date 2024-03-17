const {
    BadRequestError,
    AuthFailureError,
    ForbiddenError,
} = require('../core/error.response.js');
const { PrismaClient } = require('@prisma/client');
const { users } = new PrismaClient();
const { removeUndefinedObject } = require('../utils/index.js');
const { connection } = require('../dbs/init.sql.js');
// define Factory class to create product
class UserFactory {
    static async getPhongId({ id }) {
        try {
            console.log({ id });
            const results = await new Promise((resolve, reject) => {
                connection.query(
                    `SELECT * FROM phong INNER JOIN loaiphong ON phong.MaLPhong = loaiphong.MaLPhong and phong.MaPhong = ${id}`,
                    (error, results, fields) => {
                        if (error) {
                            console.error('Error executing query:', error);
                            reject(error);
                            return;
                        }
                        console.log(results);
                        resolve(results);
                    },
                );
            });
            return results;
        } catch (error) {
            console.error('Error executing query:', error);
            throw error; // Re-throw the error to handle it elsewhere if needed
        }
    }

    static async getPhong(payload) {
        try {
            const results = await new Promise((resolve, reject) => {
                connection.query(
                    'SELECT * FROM phong INNER JOIN loaiphong ON phong.MaLPhong = loaiphong.MaLPhong',
                    (error, results, fields) => {
                        if (error) {
                            console.error('Error executing query:', error);
                            reject(error);
                            return;
                        }
                        resolve(results);
                    },
                );
            });
            return results;
        } catch (error) {
            console.error('Error executing query:', error);
            throw error; // Re-throw the error to handle it elsewhere if needed
        }
    }

    static async updatePhongId(payload) {
        try {
            const results = await new Promise((resolve, reject) => {
                connection.query(
                    `UPDATE phong  SET phong.TinhTrang = ${payload.TinhTrang} where phong.MaPhong = ${payload.id} `,
                    (error, results, fields) => {
                        if (error) {
                            console.error('Error executing query:', error);
                            reject(error);
                            return;
                        }
                        resolve(results);
                    },
                );
            });
            return results;
        } catch (error) {
            console.error('Error executing query:', error);
            throw error; // Re-throw the error to handle it elsewhere if needed
        }
    }
}

module.exports = UserFactory;
