-- SELECT Query #1: Displays a table that shows the total price and total profit made by the store for each order
SELECT order_items.ORDER_ID, SUM(products.PRICE * order_items.PRODUCT_QTY) AS TOTAL_PRICE, SUM((products.PRICE - products.supplier_cost) * order_items.PRODUCT_QTY) AS TOTAL_PROFIT
FROM order_items
JOIN products ON order_items.PRODUCT_ID = products.PRODUCT_ID
GROUP BY order_items.ORDER_ID
ORDER BY order_items.ORDER_ID;

-- SELECT Query #2: Display all items that have an average review that is 3 stars or less
SELECT categories.CATEGORY_NAME, products.PRODUCT_ID, products.PRODUCT_NAME, AVG(reviews.RATING) AS AVERAGE_RATING
FROM categories
JOIN products ON categories.CATEGORY_ID = products.CATEGORY_ID
JOIN reviews ON products.PRODUCT_ID = reviews.PRODUCT_ID
WHERE reviews.RATING <= 3
GROUP BY categories.CATEGORY_NAME, products.PRODUCT_ID, products.PRODUCT_NAME;

-- SELECT Query #3: List all products by most to least sold, including their sizes
SELECT sizes.SIZE_NAME, products.PRODUCT_ID, products.PRODUCT_NAME, SUM(order_items.PRODUCT_QTY) AS TOTAL_SOLD
FROM sizes
JOIN products ON sizes.SIZE_ID = products.SIZE_ID
JOIN order_items ON products.PRODUCT_ID = order_items.PRODUCT_ID
GROUP BY sizes.SIZE_NAME, products.PRODUCT_NAME, products.PRODUCT_ID
ORDER BY SUM(order_items.PRODUCT_QTY) DESC;