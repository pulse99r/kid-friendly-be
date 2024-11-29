const express = require('express')
const users = express.Router()
const db = require('../db/dbConfig.js')

users.get('/', (__, res)=>{
    res.send('Getting users...')
})

module.exports = users;