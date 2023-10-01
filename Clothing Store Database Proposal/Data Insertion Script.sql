-- Creates data for "suppliers" table
INSERT INTO suppliers (supplier_name, contact_name, phone_number, email, address) 
VALUES ('ABC Inc.', 'John Smith', '555-555-1234', 'john@abcinc.com', '123 Main St.');
INSERT INTO suppliers (supplier_name, contact_name, phone_number, email, address) 
VALUES ('XYZ Corp.', 'Jane Doe', '555-555-5678', 'jane@xyzcorp.com', '456 Elm St.');
INSERT INTO suppliers (supplier_name, contact_name, phone_number, email, address) 
VALUES ('Acme Co.', 'Bob Johnson', '555-555-9876', 'bob@acmeco.com', '789 Oak St.');
INSERT INTO suppliers (supplier_name, contact_name, phone_number, email, address) 
VALUES ('Smith and Sons', 'Tom Smith', '555-555-5555', 'tom@smithandsons.com', '321 Maple Ave.');
INSERT INTO suppliers (supplier_name, contact_name, phone_number, email, address) 
VALUES ('Jones Inc.', 'Sally Jones', '555-555-2222', 'sally@jonesinc.com', '555 Pine St.');

-- Creates data for "categories" table
INSERT INTO categories (category_name, description)
VALUES ('Shirts', 'Various styles and sizes of shirts');
INSERT INTO categories (category_name, description)
VALUES ('Pants', 'Various styles and sizes of pants');
INSERT INTO categories (category_name, description)
VALUES ('Accessories', 'Belts, hats, scarves, and other accessories to complement your outfit');
INSERT INTO categories (category_name, description)
VALUES ('Dresses', 'Various styles and sizes of dresses for any occasion');
INSERT INTO categories (category_name, description)
VALUES ('Outerwear', 'Jackets, coats, and other outerwear to keep you warm and stylish');
INSERT INTO categories (category_name, description)
VALUES ('Footwear', 'Shoes and boots for any occasion and style');

-- Creates data for the "sizes" table
INSERT INTO sizes (size_name, description) VALUES ('Small', 'Fits chest sizes 34-36 inches');
INSERT INTO sizes (size_name, description) VALUES ('Medium', 'Fits chest sizes 38-40 inches');
INSERT INTO sizes (size_name, description) VALUES ('Large', 'Fits chest sizes 42-44 inches');
INSERT INTO sizes (size_name, description) VALUES ('X-Large', 'Fits chest sizes 46-48 inches');

INSERT INTO sizes (size_name, description) VALUES ('28x30', 'Suitable for pants with waist size 28 and length 30');
INSERT INTO sizes (size_name, description) VALUES ('30x32', 'Suitable for pants with waist size 30 and length 32');
INSERT INTO sizes (size_name, description) VALUES ('32x34', 'Suitable for pants with waist size 32 and length 34');
INSERT INTO sizes (size_name, description) VALUES ('34x36', 'Suitable for pants with waist size 34 and length 36');

INSERT INTO sizes (size_name, description) VALUES ('S', 'Small (fits size 2-4), Dresses');
INSERT INTO sizes (size_name, description) VALUES ('M', 'Medium (fits size 6-8), Dresses');
INSERT INTO sizes (size_name, description) VALUES ('L', 'Large (fits size 10-12), Dresses');
INSERT INTO sizes (size_name, description) VALUES ('XL', 'Extra Large (fits size 14-16), Dresses');

INSERT INTO sizes (size_name, description) VALUES ('7', 'Suitable for size 7 shoes');
INSERT INTO sizes (size_name, description) VALUES ('8', 'Suitable for size 8 shoes');
INSERT INTO sizes (size_name, description) VALUES ('9', 'Suitable for size 9 shoes');
INSERT INTO sizes (size_name, description) VALUES ('10', 'Suitable for size 10 shoes');

INSERT INTO sizes (size_name, description) VALUES ('O/S', 'Universal size for most accessories; One-size');

-- Creates data for the "colors" table
INSERT INTO colors (color_name) VALUES ('Red');
INSERT INTO colors (color_name) VALUES ('Blue');
INSERT INTO colors (color_name) VALUES ('Green');
INSERT INTO colors (color_name) VALUES ('Yellow');
INSERT INTO colors (color_name) VALUES ('Pink');
INSERT INTO colors (color_name) VALUES ('Purple');
INSERT INTO colors (color_name) VALUES ('Black');
INSERT INTO colors (color_name) VALUES ('White');
INSERT INTO colors (color_name) VALUES ('Gray');
INSERT INTO colors (color_name) VALUES ('Brown');

-- Creates data for the "products" table
-- Shirts
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Men Classic White Shirt', 'A classic white shirt for men', 1, 1, 1, 1, 15.99, 2019, 29.99);
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Womens Striped Shirt', 'A striped shirt for women', 1, 2, 3, 2, 12.99, 909, 24.99);
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Mens Button-Down Shirt', 'A casual button-down shirt for men', 1, 3, 6, 3, 18.99, 2180, 34.99);

-- Pants
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Slim Fit Chino Pants', 'Cotton blend chino pants with slim fit', 2, 5, 6, 2, 25.00, 1369, 45.99);
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Straight Leg Jeans', 'Straight leg jeans made with durable denim', 2, 6, 2, 5, 30.00, 334, 59.99);

-- Accesories
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Wool Hat', 'Warm wool hat', 3, 17, 8, 2, 8.50, 774, 20.00);
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Cashmere Scarf', 'Soft cashmere scarf', 3, 17, 3, 5, 12.00, 1919, 35.00);

-- Dresses
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Summer Floral Dress', 'A beautiful summer dress with a floral pattern', 4, 9, 3, 2, 25.99, 2635, 49.99);

-- Outerwear
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Bomber Jacket', 'A stylish and warm bomber jacket made from high-quality materials', 5, 2, 4, 3, 50.00, 632, 89.99);
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Trench Coat', 'A classic trench coat that is perfect for the fall and winter seasons', 5, 1, 9, 1, 75.00, 1099, 139.99);

-- Shoes
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Womens Running Shoes', 'Breathable mesh running shoes with cushioned soles', 6, 13, 3, 2, 35.00, 724, 69.99);
INSERT INTO products (product_name, description, category_id, size_id, color_id, supplier_id, supplier_cost, product_qty, price)
VALUES ('Mens Dress Shoes', 'Genuine leather dress shoes with polished finish', 6, 15, 7, 4, 45.00, 833, 89.99);

-- Creates data for the "customers" table
INSERT INTO customers (first_name, last_name, email, phone_number, address)
VALUES ('Jordan', 'Smith', 'jordansmith@email.com', '555-123-4567', '987 Birch Ln.');
INSERT INTO customers (first_name, last_name, email, phone_number, address)
VALUES ('Taylor', 'Jones', 'taylorjones@email.com', '555-987-6543', '234 Walnut St.');
INSERT INTO customers (first_name, last_name, email, phone_number, address)
VALUES ('Alex', 'Johnson', 'alexjohnson@email.com', '555-111-2222', '555 Cedar Rd.');
INSERT INTO customers (first_name, last_name, email, phone_number, address)
VALUES ('Chris', 'Martin', 'chrismartin@email.com', '555-777-8888', '1111 Maple Dr.');
INSERT INTO customers (first_name, last_name, email, phone_number, address)
VALUES ('Casey', 'Garcia', 'caseygarcia@email.com', '555-444-3333', '888 Oak St.');

-- Creates data for the "orders" table"
INSERT INTO orders (customer_id, order_status, shipping_address, payment_method, payment_status, delivery_status)
VALUES (1, 'Order Fulfilled', '987 Birch Ln.', 'PayPal', 'Paid', 'Delivered');
INSERT INTO orders (customer_id, order_status, shipping_address, payment_method, payment_status, delivery_status)
VALUES (2, 'Order Fulfilled', '234 Walnut St.', 'Visa', 'Paid', 'Order Shipped');
INSERT INTO orders (customer_id, order_status, shipping_address, payment_method, payment_status, delivery_status)
VALUES (3, 'Order Placed', '555 Cedar Rd.', 'MasterCard', 'Unpaid', 'Order Received');
INSERT INTO orders (customer_id, order_status, shipping_address, payment_method, payment_status, delivery_status)
VALUES (4, 'Order Fulfilled', '1111 Maple Dr.', 'AMEX', 'Paid', 'Delivered');
INSERT INTO orders (customer_id, order_status, shipping_address, payment_method, payment_status, delivery_status)
VALUES (5, 'Order Fulfilled', '888 Oak St.', 'Debit', 'Paid', 'Delivered');
INSERT INTO orders (customer_id, order_status, shipping_address, payment_method, payment_status, delivery_status) 
VALUES (3, 'Order Fulfilled', '555 Cedar Rd.', 'Visa', 'Paid', 'Order Delayed');
INSERT INTO orders (customer_id, order_status, shipping_address, payment_method, payment_status, delivery_status) 
VALUES (4, 'Order Fulfilled', '1111 Maple Dr.', 'Debit', 'Paid', 'Delivered');

-- Create data for "order_items" table
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (1, 1, 2);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (1, 5, 1);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (1, 9, 3);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (2, 2, 1);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (2, 6, 3);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (3, 3, 2);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (3, 7, 4);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (4, 4, 3);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (5, 5, 2);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (5, 9, 1);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (5, 12, 4);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (6, 6, 1);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (6, 10, 2);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (7, 7, 3);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (7, 11, 1);
INSERT INTO order_items (order_id, product_id, product_qty) VALUES (7, 12, 1);

-- -- Create data for "reviews" table
INSERT INTO reviews (product_id, customer_id, rating, review_comment)
VALUES (1, 1, 4, 'I love this classic white shirt! It fits perfectly and looks great with jeans or dress pants.');
INSERT INTO reviews (product_id, customer_id, rating, review_comment)
VALUES (5, 1, 4, 'These jeans fit really well and are very comfortable. The color is a bit lighter than in the picture, but it still looks great. Overall, very happy with my purchase!');
INSERT INTO reviews (product_id, customer_id, rating, review_comment)
VALUES (9, 1, 2, 'Disappointed with the jacket. The zipper broke after only a few wears.');
INSERT INTO reviews (product_id, customer_id, rating, review_comment)
VALUES (4, 4, 3, 'Good quality pants, but a bit snug.');
INSERT INTO reviews (product_id, customer_id, rating, review_comment)
VALUES (5, 5, 5, 'These are my new favorite jeans! They fit perfectly and are very comfortable.');
INSERT INTO reviews (product_id, customer_id, rating, review_comment)
VALUES (11, 4, 4, 'I bought these shoes for running and they have been very comfortable so far. The size was true to fit and the quality of the shoe is good for the price.'); 
INSERT INTO reviews (product_id, customer_id, rating, review_comment) 
VALUES (8, 4, 4, 'I love this dress! The fit is perfect and the floral pattern is so cute.');
