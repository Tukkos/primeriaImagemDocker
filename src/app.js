import express from "express";

const app = express();

app.get("/health", (req, res) => {
    res.send("ok")
});

app.listen(5001, () => {
  console.log("Running on 5001");
});