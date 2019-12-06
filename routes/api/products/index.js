const router = require("express").Router();

// same as
// const express = require("express");
// const router = express.Router();

const getAllProducts = require("./get_all");

// Routes for /api/products
// GET request: /api/products/
router.get("/", getAllProducts);

// GET /api/produdcts/:product_id
router.get("/:product_id", getProductDetails);

module.exports = router;