const express = require("express");

const app = express();

app.listen(3000, (err) => {
    if (err) console.log(err.message);
    else console.log("app started at port 3000");
});

app.use(express.json());

const todoRouter = require("./routes/todosRouter");
app.use("/todos", todoRouter);
