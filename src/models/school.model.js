module.exports = (sequelize, Sequelize) => {
    const School = sequelize.define('school', {
        name: {
            type: Sequelize.STRING(255)
        },
        lat: {
            type: Sequelize.DECIMAL(12, 6)
        },
        lng: {
            type: Sequelize.DECIMAL(12, 6)
        },
        address: {
            type: Sequelize.STRING(255)
        }
    })

    return School
}
