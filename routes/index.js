const router = require("express").Router();
const apiRouter = require("./api");

// Routes for /
// ALL METHODS USE: /api
router.use("/api", apiRouter);

module.exports = router;