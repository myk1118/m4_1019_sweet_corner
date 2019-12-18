module.exports = async (req, res, next) => {
    try {
        const {
            cart
        } = req;
        let output = {
            cartId: null,
            message: "No active cart"
        }

        if (cart) {
            output.cartId = cart.id;
            output.message = "You have a cart!";

            // Get all cart items from db
        }

        res.send(output);
    } catch (error) {
        console.log(error);
        next(error)
        // if (error instanceof ApiError) {
        //     res.status(error.status).send(error.message);
        // } else {
        //     res.status(500).send("Internal server error");
        // }
    }
}