// Move /api/products/:product_id controller function to here
// Use get_all.js as a reference

const db = require('../../../db/index');
const {
    buildUrl
} = require('../../../helpers/index');
module.exports = async (req, res) => {
    const {
        product_id
    } = req.params;
    try {
        const [productDetails] = await db.execute(`
        SELECT p.pid AS id, caption, cost, description, p.name,
        i.pid AS imId, altText, file, type
        FROM products AS p
        JOIN images AS i
        ON p.id  = i.productId
        WHERE p.pid = ?`, [product_id]);
        let product = {};
        let images = {};
        productDetails.forEach(result => {
            const {
                imId,
                altText,
                file,
                type,
                ...p
            } = result;
            let keyName = 'image';
            if (type === 'thumbnail') {
                keyName = type
            }

            product = p;
            images[keyName] = {
                id: imId,
                altText,
                file,
                type,
                url: buildUrl(req, type, file)
            }
        });
        res.send({
            ...product,
            ...images
        })
    } catch (error) {
        console.log("ERROR:" + error);
    }
}