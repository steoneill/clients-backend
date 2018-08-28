const express = require("express"),
  app = express();

require("dotenv").config();

app.get("/", (req, res) => {
  res.send("yo");
});

app.listen(process.env.PORT, (req, res) => {
  console.log(`💻  server starting on port  ${process.env.PORT}`);
});
