const express = require("express");
const app = express();
const port = 3000;

app.use("./public", express.static("public"));

app.get("/", (req, res) => {
  res.send(
    "<h1>Carefully watch your thoughts, for they become your words. Manage and watch your words, for they will become your actions. ~ Mahatma Gandhi ~ </h1><a href='/info'>Info page</a>"
  );
});

app.get("/info", (req, res) => {
  res.send("<h1>Infopage</h1><a href='/'>Home page</a>");
});

app.listen(port, () => {
  console.log(`App is listening at http://localhost:${port}`);
});
