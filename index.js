const express = require("express");
const app = express();

const PORT = process.env.PORT1;

app.get("/", (req, res) => {
  res.send("Hello I have deployed my simple Node Js App Cloud Run!");
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
