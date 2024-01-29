const express = require("express");
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send("<h1>Chrispi-api</h1><a href='/info'>Info page</a>");
});

app.get("/info", (req, res) => {
  res.send("<h1>Infopage</h1><a href='/'>Home page</a>");
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
