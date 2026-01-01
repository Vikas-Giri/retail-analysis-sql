# Retail Analysis SQL Project

## Project Overview
This project demonstrates practical SQL skills through the design and analysis of a retail database.  
The database captures customer information, product details, orders, and payment transactions to answer common business questions related to sales, customers, and payments.

The objective is to showcase SQL concepts such as joins, aggregations, subqueries, and date-based analysis in a realistic retail scenario.

---

## Database Name
`retail_analysis`

---

## Database Schema Structure

The database consists of four relational tables:

### 1. customers
Stores customer master data.

| Column Name     | Data Type      | Description                          |
|-----------------|----------------|--------------------------------------|
| customer_id     | INT (PK)       | Unique customer identifier           |
| customer_name   | VARCHAR(100)   | Name of the customer                 |
| city            | VARCHAR(100)   | City of residence                    |
| signup_date     | DATE           | Customer signup date                 |

---

### 2. products
Stores product catalog information.

| Column Name     | Data Type      | Description                          |
|-----------------|----------------|--------------------------------------|
| product_id      | INT (PK)       | Unique product identifier            |
| product_name    | VARCHAR(100)   | Name of the product                  |
| category        | VARCHAR(100)   | Product category                     |
| price           | DECIMAL(10,2)  | Product price                        |

---

### 3. orders
Stores order-level transaction details.

| Column Name     | Data Type      | Description                          |
|-----------------|----------------|--------------------------------------|
| order_id        | INT (PK)       | Unique order identifier              |
| customer_id     | INT (FK)       | References customers(customer_id)    |
| product_id      | INT (FK)       | References products(product_id)      |
| order_date      | DATE           | Date when order was placed           |
| quantity        | INT            | Quantity ordered                     |

---

### 4. payments
Stores payment transaction information.

| Column Name     | Data Type      | Description                          |
|-----------------|----------------|--------------------------------------|
| payment_id      | INT (PK)       | Unique payment identifier            |
| order_id        | INT (FK)       | References orders(order_id)          |
| payment_date    | DATE           | Date of payment                      |
| amount          | DECIMAL(10,2)  | Amount paid                          |
| payment_mode    | VARCHAR(100)   | Mode of payment (Cash, Card, UPI)    |

---

## SQL Concepts Used
- SELECT queries
- INNER JOIN and LEFT JOIN
- GROUP BY and HAVING
- Aggregate functions (SUM, COUNT, AVG)
- Subqueries
- Date-based filtering
- Sorting and ranking

---

## Business Questions Answered
- View customer, product, order, and payment data
- Analyze total spending by each customer
- Identify top customers based on revenue
- Calculate revenue by product and category
- Analyze payment mode distribution
- Identify customers who have never placed orders
- Find orders placed in the current year
- Calculate average order value
- Identify high-value customers
- Analyze product demand using order quantities

---

## Project Structure
retail-analysis-sql/
│
├── Schema.sql -- Database and table creation scripts
├── Data.sql -- Sample data insertion scripts
├── Queries.sql -- Analytical SQL queries with comments
└── README.md

---

## Tools Used
- MySQL
- SQL

---

## Conclusion
This project showcases practical SQL skills required for a Data Analyst role by applying SQL to real-world retail business problems such as customer analysis, sales performance tracking, and payment insights.
