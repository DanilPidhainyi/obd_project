const dbConfig = require('../config/database');
const mysql = require('mysql2');

const connection = mysql.createConnection({
    user: dbConfig.username,
    password: dbConfig.password,
    host: dbConfig.host,
    database: dbConfig.database
});

connection.query(
    'select * from commit',
    function(err, results, fields) {
        console.log('########################## commit_test')
        console.log(results)
    }
);
