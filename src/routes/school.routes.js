module.exports = (app) => {
    const school = require('../controllers/school.controller')

    let router = require('express').Router()

    router.post('/', school.create)
    router.get('/', school.findAll)
    router.get('/:id', school.findOne)
    router.put('/:id', school.update)
    router.delete('/:id', school.delete)
    router.delete('/', school.deleteAll)

    app.use('/api/school', router)
}
