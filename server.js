const express = require("express");
const PORT = process.env.PORT || 3001;
const db = require("./db");
const {
    buildUrl
} = require("./helpers");

const app = express();

app.get("/api/products", async (req, res) => {
    const [results] = await db.query(`
    SELECT p.pid AS id, caption, cost, p.name, i.pid AS tnId, altText, file, type
    FROM products AS p
    JOIN images AS i
    ON i.productId=p.id
    WHERE i.type='thumbnail'
    `);

    const products = results.map(product => {
        const {
            tnId,
            altText,
            file,
            type,
            ...p
        } = product;
        return {
            ...p,
            thumbnail: {
                id: tnId,
                altText: altText,
                file: file,
                type: type,
                url: buildUrl(req, type, file)
            }
        }
    });

    // res.send({
    //     message: "This is to get all products",
    //     products: results
    // });

    res.send({
        products: products
    });
});

// sample product id: 6145a47a-13cb-11ea-8574-0242ac120002

app.get("/api/products/:product_id", async (req, res) => {
    const {
        product_id
    } = req.params;

    // Query the database, get all the data you need
    // Format the data as needed
    // Send data to client

    const [results] = await db.query(`
    SELECT p.pid AS id, caption, cost, p.name, i.pid AS imId, altText, file, type
    FROM products AS p
    JOIN images AS i
    ON i.productId=p.id
    WHERE p.pid=?
    `, [product_id]);

    let product = {};
    let images = {};

    results.forEach(result => {
        const {
            imId,
            altText,
            file,
            type,
            ...p
        } = result;
        let keyName = "image";
        if (type === "thumbnail") {
            keyName = type;
        }
        product = p;
        images[keyName] = {
            id: imId,
            altText: altText,
            file: file,
            type: type,
            url: buildUrl(req, type, file)
        }
    });

    res.send({
        product: product
    });
});

app.listen(PORT, () => {
    console.log("Server running @ localhost:" + PORT);
});