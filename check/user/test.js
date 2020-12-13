const connection = require("../src/js/connection");

module.exports = {
    run: (async () => {
        try {
            await connection.authenticate();
            console.log("Connection has been established.");
        } catch (error) {
            console.log("ERROR: Connection has not been established.");
            console.log(error)
        }
    })
};
