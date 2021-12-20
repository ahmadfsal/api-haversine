const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')

const app = express()

let corsOptions = {
    origin: '*',
    Headers: {
        'Access-Control-Allow-Origin': '*'
    }
}

app.use(cors(corsOptions))

const db = require('./src/models/db')
db.sequelize.sync()
// db.sequelize.sync({ force: true }).then(() => {
//     console.log('Drop and re-sync db.')
// })

// parse request of content-type: application/json
app.use(bodyParser.json())

// parse request of content-type: application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }))

// simple route
app.get('/', (req, res) => {
    res.json({
        message: 'Server is already running...'
    })
})

require('./src/routes/school.routes')(app)

// set port, listen for request
app.listen(8080, () => {
    console.log('Server is running on port: 8080')
})
