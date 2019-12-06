const router = require("express").Router();
const productsRouter = require("./products");
// const cartRouter = require("./cart");
// const userRouter = require("./user");

// Routes for /api

// ALL METHODS /api/products
router.use("/products", productsRouter);

// ALL METHODS /api/cart
// router.use("/cart", cartRouter);

// ALL METHODS /api/user
// router.use("/user", userRouter);

module.exports = router;