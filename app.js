const express = require("express");
const app = express();
const port = 3000;

app.use(express.static("public"));
app.use(express.router("info"));

router.get("/info", (req, res) => {
  res.sendFile("/public/demo.html");
});

app.get("/", (req, res) => {
  res.send("<h1>Homepage</h1><a href='/info'>Info page</a>");
});

app.get("/info", (req, res) => {
  res.send("<h1>Infopage</h1><a href='/'>Home page</a>");
});

app.listen(port, () => {
  console.log(`App is listening at http://localhost:${port}`);
});
