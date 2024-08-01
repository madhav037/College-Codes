const mongoose = require('mongoose')

const scheme = new mongoose.Schema({
    _id: mongoose.ObjectId,
    name : String,
    age : Number
})

module.exports = mongoose.model('student',scheme)