const mongoose = require("mongoose");

mongoose.connect("mongodb://127.0.0.1:27017/todos"); // connect and create DB if not present

//create a collection under the DB

const todoModel = require("./models/todoModel");
todoModel.create({
    id: 1,
    userID: 2,
    title: "finish Breakfast",
    completed: false,
});

mongoose.disconnect();
async function find() {
    var found = await todoModel.findOne({ userID: 1 });
    found.title = "finsh Dinner";
    found.save();
    // console.log(found)
}

async function del(query) {
    var count = await todoModel.deleteOne(query);
    console.log(count);
}

// del({ userID: 1 });
// find();
