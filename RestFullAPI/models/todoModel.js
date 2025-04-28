const mongoose = require("mongoose");

const todoSchema = mongoose.Schema({
    id: { type: Number, required: true },
    userID: Number,
    title: { type: String, required: true },
    completed: {type: Boolean, required: true},
});

module.exports = mongoose.model("todo_list", todoSchema);
