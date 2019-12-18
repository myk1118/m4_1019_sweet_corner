const express = require("express");
const PORT = process.env.PORT || 3001;
const ApiError = require("./helpers/api_error");
global.ApiError = ApiError;
const routes = require("./routes");
const path = require("path");
const defaultErrorHandler = require("./middleware/default_error_handler");

const app = express();

app.use(express.urlencoded({
    extended: false
}));
app.use(express.static(path.resolve(__dirname, "client", "dist")));

app.use(routes);

app.get("*", (req, res) => {
    res.sendFile(path.resolve(__dirname, "client", "dist", "index.html"));
});

// sample product id: 6145a47a-13cb-11ea-8574-0242ac120002

app.use(defaultErrorHandler);

app.listen(PORT, () => {
    console.log("Server running @ localhost:" + PORT);
});