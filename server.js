const express = require("express");
const PORT = process.env.PORT || 3001;
// const db = require("./db");
// const {
//     buildUrl
// } = require("./helpers");
const routes = require("./routes");
const path = require("path");

const app = express();

app.use(express.static(path.resolve(__dirname, "client", "dist")));

app.use(routes);

app.get("*", (req, res) => {
    res.sendFile(path.resolve(__dirname, "client", "dist", "index.html"));
});

// sample product id: 6145a47a-13cb-11ea-8574-0242ac120002

app.listen(PORT, () => {
    console.log("Server running @ localhost:" + PORT);
});