-- Create the "suppliers" table
CREATE TABLE suppliers (
   supplier_id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   supplier_name VARCHAR2(255) NOT NULL,
   contact_name VARCHAR2(255) NOT NULL,
   phone_number VARCHAR2(20) NOT NULL,
   email VARCHAR2(255) NOT NULL,
   address VARCHAR2(500) NOT NULL
);

-- Create the "categories" table
CREATE TABLE categories (
   category_id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   category_name VARCHAR2(255) NOT NULL UNIQUE,
   description VARCHAR2(500)
);

-- Create the "sizes" table
CREATE TABLE sizes (
   size_id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   size_name VARCHAR2(255) NOT NULL,
   description VARCHAR2(500)
);

-- Create the "colors" table
CREATE TABLE colors (
   color_id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   color_name VARCHAR2(255) NOT NULL UNIQUE
);

-- Create the "products" table
CREATE TABLE products (
   product_id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   product_name VARCHAR2(255) NOT NULL,
   description VARCHAR2(500),
   category_id NUMBER(10) NOT NULL,
   size_id NUMBER(10) NOT NULL,
   color_id NUMBER(10) NOT NULL,
   supplier_id NUMBER(10) NOT NULL,
   supplier_cost NUMBER(10,2) NOT NULL,
   product_qty NUMBER(10) NOT NULL CHECK (product_qty >= 0),
   price NUMBER(10,2) NOT NULL,
   created_date TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
   modified_date TIMESTAMP(6),
   CONSTRAINT fk_product_category_id FOREIGN KEY (category_id) REFERENCES categories (category_id),
   CONSTRAINT fk_product_size_id FOREIGN KEY (size_id) REFERENCES sizes (size_id),
   CONSTRAINT fk_product_color_id FOREIGN KEY (color_id) REFERENCES colors (color_id),
   CONSTRAINT fk_product_supplier_id FOREIGN KEY (supplier_id) REFERENCES suppliers (supplier_id)
);

-- Create the "customers" table
CREATE TABLE customers (
   customer_id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   first_name VARCHAR2(255) NOT NULL,
   last_name VARCHAR2(255) NOT NULL,
   email VARCHAR2(255) NOT NULL UNIQUE,
   phone_number VARCHAR2(20) NOT NULL,
   address VARCHAR2(500) NOT NULL,
   account_created_date TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
   account_modified_date TIMESTAMP(6)
);

-- Create the "reviews" table
CREATE TABLE reviews (
   review_id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   product_id NUMBER(10) NOT NULL,
   customer_id NUMBER(10) NOT NULL,
   rating NUMBER(2) NOT NULL CHECK (rating BETWEEN 1 AND 5),
   review_comment VARCHAR2(1000),
   review_date TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
   CONSTRAINT fk_review_product_id FOREIGN KEY (product_id) REFERENCES products (product_id),
   CONSTRAINT fk_review_customer_id FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

-- Create the "orders" table
CREATE TABLE orders (
   order_id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   customer_id NUMBER(10) NOT NULL,
   order_date TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP NOT NULL,
   order_status VARCHAR2(50) NOT NULL,
   shipping_address VARCHAR2(500) NOT NULL,
   payment_method VARCHAR2(50) NOT NULL,
   payment_status VARCHAR2(50) NOT NULL,
   delivery_status VARCHAR2(50) NOT NULL,
   CONSTRAINT fk_order_customer_id FOREIGN KEY (customer_id) REFERENCES customers (customer_id),
   CONSTRAINT chk_order_status CHECK (order_status IN ('Order Placed', 'In Progress', 'Cancelled', 'Order Fulfilled')),
   CONSTRAINT chk_payment_method CHECK (payment_method IN ('MasterCard', 'Visa', 'AMEX', 'PayPal', 'Debit')),
   CONSTRAINT chk_payment_status CHECK (payment_status IN ('Paid', 'Unpaid')),
   CONSTRAINT chk_delivery_status CHECK (delivery_status IN ('Order Received', 'Order Shipped', 'Order Delayed', 'Delivered')),
   CONSTRAINT chk_delivery_paid CHECK ((payment_status = 'Paid' AND (delivery_status = 'Order Shipped' OR delivery_status = 'Delivered' OR delivery_status = 'Order Delayed')) OR (payment_status = 'Unpaid' AND delivery_status = 'Order Received')),
   CONSTRAINT chk_order_status_paid CHECK ((payment_status = 'Paid' AND (order_status = 'In Progress' OR order_status = 'Cancelled' OR order_status = 'Order Fulfilled')) OR (payment_status = 'Unpaid' AND (order_status = 'Order Placed' OR order_status = 'Cancelled')))
);

-- Create the "order_items" table
CREATE TABLE order_items (
   item_id NUMBER(10) GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
   order_id NUMBER(10) NOT NULL,
   product_id NUMBER(10) NOT NULL,
   product_qty NUMBER(10) NOT NULL CHECK (product_qty >= 1),
   CONSTRAINT fk_items_orders FOREIGN KEY (order_id) REFERENCES orders (order_id),
   CONSTRAINT fk_items_products FOREIGN KEY (product_id) REFERENCES products (product_id)
);