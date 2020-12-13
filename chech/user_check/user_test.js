const dbConfig = require('../config/database');
const mysql = require('mysql2');

const connection = mysql.createConnection({
    user: dbConfig.username,
    password: dbConfig.password,
    host: dbConfig.host,
    database: dbConfig.database
});

connection.query(
    'select * from user',
    function(err, results, fields) {
        console.log('########################## user_test')
        console.log(results)
    }
);
