const router = require("express").Router();
const apiRouter = require("./api");
const imagesRouter = require("./images");

// Routes for /

// ALL METHODS USE: /api
router.use("/api", apiRouter);

// ALL METHODS /images
router.use("/images", imagesRouter);

module.exports = router;