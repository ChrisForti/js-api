const express = require("express");
const app = express();
const port = 3000;

app.use(express.static("public"));

app.get("/", (req, res) => {
  res.send("<h1>Homepage</h1><a href='/info'>Info page</a>");
});

app.get("/info", (req, res) => {
  res.send("<h1>Infopage</h1><a href='/'>Home page</a>");
});

app.listen(port, () => {
  console.log(`App is listening at http://localhost:${port}`);
});
