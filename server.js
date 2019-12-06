const express = require("express");
const PORT = process.env.PORT || 3001;
const db = require("./db");
const {
    buildUrl
} = require("./helpers");
const routes = require("./routes");

const app = express();

app.use(routes);

// sample product id: 6145a47a-13cb-11ea-8574-0242ac120002

app.listen(PORT, () => {
    console.log("Server running @ localhost:" + PORT);
});