const connection = require("../connection");
const Sequelize = require("sequelize");

const Model = Sequelize.Model;

class User extends Model {}

User.init(
    {
        login: {
            type: Sequelize.STRING,
            primaryKey: true,
            allowNull: false,
            unique: true
        },
        password: {
            type: Sequelize.STRING
        },
        email: {
            type: Sequelize.STRING
        },
        Role_name: {
            type: Sequelize.STRING,
            allowNull: false
        },
        Commit_id: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        Corpus_name: {
            type: Sequelize.STRING,
            allowNull: false
        }
    },
    {
        sequelize: connection,
        modelName: "User",
    }
);

module.exports = User
