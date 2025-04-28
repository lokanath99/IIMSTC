const express = require("express");
const router = express.Router();
const mongoose = require("mongoose");
const todoModel = require("../models/todoModel");
const dotenv = require("dotenv");
dotenv.config();

router.get("/", async (req, res) => {
    var db = await mongoose.connect(process.env.MONGO_CON);
    var data = await todoModel.find();
    await db.disconnect();
    res.json(data);
});
router.get("/:index", async (req, res) => {
    var db = await mongoose.connect(process.env.MONGO_CON);
    var data = await todoModel.find();
    await db.disconnect();
    res.json(data[req.params.index]);
});
router.post("/", async (req, res) => {
    var data = req.body;
    console.log(data);
    var db = await mongoose.connect(process.env.MONGO_CON);
    var data1 = await todoModel.find();
    var id = data1[data1.length - 1].id;
    data.id = ++id;
    data.userID = 1;
    var fdbk = await todoModel.create(data);
    await db.disconnect();
    res.json(fdbk);
});
router.put("/", async (req, res) => {
    var query = req.body.query_data;
    var update = req.body.update_data;
    var db = await mongoose.connect(process.env.MONGO_CON);
    var fdbk = await todoModel.updateOne(query, update);
    await db.disconnect();
    res.json(fdbk);
});
router.delete("/", async (req, res) => {
    var query = req.body;
    var db = await mongoose.connect(process.env.MONGO_CON);
    var fdbk = await todoModel.deleteOne(query);
    await db.disconnect();
    res.json(fdbk);
});

module.exports = router;
