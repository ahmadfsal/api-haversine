const db = require('../models/db')
const School = db.school

exports.create = (req, res) => {
    // Validate request
    if (!req.body) {
        res.status(400).send({
            message: 'Content can not be empty!'
        })
        return
    }

    const school = {
        name: req.body.name,
        lat: req.body.lat,
        lng: req.body.lng
    }

    School.create(school)
        .then((data) => {
            res.send(data)
        })
        .catch((err) => {
            res.status(500).send({
                message:
                    err.message ||
                    'Some error occurred while creating the school.'
            })
        })
}

exports.findAll = (req, res) => {
    School.findAll()
        .then((data) => {
            res.send(data)
        })
        .catch((err) => {
            res.status(500).send({
                message:
                    err.message ||
                    'Some error occurred while retrieving school.'
            })
        })
}

exports.findOne = (req, res) => {
    const id = req.params.id

    School.findByPk(id)
        .then((data) => {
            res.send(data)
        })
        .catch((err) => {
            res.status(500).send({
                message: 'Error retrieving school with id=' + id
            })
        })
}

exports.update = (req, res) => {
    const id = req.params.id

    School.update(req.body, {
        where: { id: id }
    })
        .then((num) => {
            if (num == 1) {
                res.send({
                    message: 'school was updated successfully.'
                })
            } else {
                res.send({
                    message: `Cannot update school with id=${id}. Maybe school was not found or req.body is empty!`
                })
            }
        })
        .catch((err) => {
            res.status(500).send({
                message: 'Error updating school with id=' + id
            })
        })
}

exports.delete = (req, res) => {
    const id = req.params.id

    School.destroy({
        where: { id: id }
    })
        .then((num) => {
            if (num == 1) {
                res.send({
                    message: 'school was deleted successfully!'
                })
            } else {
                res.send({
                    message: `Cannot delete school with id=${id}. Maybe school was not found!`
                })
            }
        })
        .catch((err) => {
            res.status(500).send({
                message: 'Could not delete school with id=' + id
            })
        })
}

exports.deleteAll = (req, res) => {
    School.destroy({
        where: {},
        truncate: false
    })
        .then((nums) => {
            res.send({
                message: `${nums} school were deleted successfully!`
            })
        })
        .catch((err) => {
            res.status(500).send({
                message:
                    err.message ||
                    'Some error occurred while removing all school.'
            })
        })
}
