const express = require('express')
const app = express()
app.use(express.json())

const db = require('./db/dbConfig.js')
const userController = require('./controllers/users.js')
// const notesController = require('./controllers/notes.js')

const cors = require('cors')
app.use(cors())

app.use('/users', userController )
// app.use('/notes', userController )

app.get('/', (req, res) => {
  res.send (`Welcome to kid-friendly-be`)
})
app.get('*', (req, res) => {
  res.send (`This file is not available!`)
})

module.exports = app;