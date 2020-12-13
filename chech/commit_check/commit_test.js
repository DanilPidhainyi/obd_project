const dbConfig = require('../config/database');
const mysql = require('mysql2');

const connection = mysql.createConnection({
    user: dbConfig.DATABASE_USERNAME,
    password: dbConfig.DATABASE_PASSWORD,
    host: dbConfig.DATABASE_HOST,
    database: dbConfig.DATABASE_NAME
});

connection.query(
    'select * from commit',
    function(err, results, fields) {
        console.log('########################## commit_test')
        console.log(results)
    }
);
