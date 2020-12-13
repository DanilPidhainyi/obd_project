const connection = require("../connection");
const Sequelize = require("sequelize");

const Model = Sequelize.Model;

class Commit extends Model {}

Commit.init(
    {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            allowNull: false,
            unique: true
        },
        description: {
            type: Sequelize.STRING
        },
        createdAt: {
            type: Sequelize.DATE,
            unique: true
        },
        Branch_name: {
            type: Sequelize.STRING,
            allowNull: false
        }
    },
    {
        sequelize: connection,
        modelName: "Commit",
    }
);

module.exports = Commit
