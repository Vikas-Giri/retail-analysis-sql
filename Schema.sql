/* =========================================================
   Database Creation
   ========================================================= */

-- Create database for retail analysis
CREATE DATABASE retail_analysis;

-- Use the retail_analysis database
USE retail_analysis;


/* =========================================================
   Customers Table
   Stores customer master data
   ========================================================= */
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,          -- Unique identifier for each customer
    customer_name VARCHAR(100),            -- Name of the customer
    city VARCHAR(100),                     -- City where customer resides
    signup_date DATE                       -- Date when customer signed up
);


/* =========================================================
   Products Table
   Stores product catalog information
   ========================================================= */
CREATE TABLE products (
    product_id INT PRIMARY KEY,            -- Unique identifier for each product
    product_name VARCHAR(100),             -- Name of the product
    category VARCHAR(100),                 -- Product category
    price DECIMAL(10,2)                    -- Price of the product
);


/* =========================================================
   Orders Table
   Stores order-level transaction data
   Each order represents purchase of a single product
   ========================================================= */
CREATE TABLE orders (
    order_id INT PRIMARY KEY,              -- Unique identifier for each order
    customer_id INT,                       -- Customer who placed the order
    product_id INT,                        -- Product ordered
    order_date DATE,                       -- Date of order
    quantity INT,                          -- Quantity ordered

    -- Foreign key relationships
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


/* =========================================================
   Payments Table
   Stores payment information for each order
   ========================================================= */
CREATE TABLE payments (
    payment_id INT PRIMARY KEY,            -- Unique identifier for payment
    order_id INT,                          -- Related order ID
    payment_date DATE,                     -- Date of payment
    amount DECIMAL(10,2),                  -- Amount paid
    payment_mode VARCHAR(100),             -- Mode of payment (Cash, Card, UPI, etc.)

    -- Foreign key relationship
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
