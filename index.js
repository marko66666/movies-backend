const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");
require("dotenv").config();

app.use(cors());
app.use(express.json());

app.use("/auth", require("./routes/jwtAuth"));

app.use("/dashboard", require("./routes/dashboard"));

app.get("/", (req, res) => {
  res.send("welcome");
});

const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log("Server is starting on port " + PORT);
});
