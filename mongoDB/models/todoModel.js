const mongoose = require("mongoose");

const todoSchema = mongoose.Schema({
    id: Number,
    userID: Number,
    title: String,
    completed: Boolean,
});

module.exports = mongoose.model("todo_list", todoSchema);