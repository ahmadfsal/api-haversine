module.exports = (sequelize, Sequelize) => {
    const School = sequelize.define('school', {
        name: {
            type: Sequelize.STRING
        },
        lat: {
            type: Sequelize.DECIMAL(12, 6)
        },
        lng: {
            type: Sequelize.DECIMAL(12, 6)
        },
    })

    return School
}
