var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'quanlykhachsan',
});

connection.connect(() => {
    console.log('connection');
});

module.exports = { connection };
