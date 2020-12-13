const dbConfig = require('../config/database');
const mysql = require('mysql2');

const connection = mysql.createConnection({
    user: dbConfig.DATABASE_USERNAME,
    password: dbConfig.DATABASE_PASSWORD,
    host: dbConfig.DATABASE_HOST,
    database: dbConfig.DATABASE_NAME
});

connection.query(
    'select * from user',
    function(err, results, fields) {
        console.log('########################## user_test')
        console.log(results)
    }
);
