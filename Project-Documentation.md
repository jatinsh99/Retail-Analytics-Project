# Retail Analytics Database Project

## 1. Project Overview
This project is a Retail Analytics Database designed to manage and analyze retail sales data.

The database stores information about customers, products, stores, and sales transactions. SQL queries are used to analyze sales performance, product demand, customer activity, and store-wise sales.

The project demonstrates practical SQL concepts such as JOIN, GROUP BY, HAVING, subqueries, views, stored procedures, and triggers.

## 2. Database Structure
The database contains four main tables:

1. Customers – Stores customer information such as name, email, and city.
2. Products – Stores product details such as product name, category, and price.
3. Stores – Stores information about retail stores and their locations.
4. Sales – Stores sales transactions and connects customers, products, and stores using foreign keys.

## 3. Tables and Columns
### Customers

| Column | Description |
|---|---|
| customer_id | Unique ID of the customer (Primary Key) |
| first_name | Customer's first name |
| last_name | Customer's last name |
| email | Customer's email address |
| city | Customer's city |

### Products

| Column | Description |
|---|---|
| product_id | Unique ID of the product (Primary Key) |
| product_name | Name of the product |
| category | Product category |
| price | Price of the product |

### Stores

| Column | Description |
|---|---|
| store_id | Unique ID of the store (Primary Key) |
| store_name | Name of the store |
| city | Store's city |

### Sales

| Column | Description |
|---|---|
| sale_id | Unique ID of the sale (Primary Key) |
| customer_id | ID of the customer (Foreign Key) |
| product_id | ID of the product (Foreign Key) |
| store_id | ID of the store (Foreign Key) |
| sale_date | Date of the sale |
| quantity | Number of products sold |


## 4. Table Relationships

The Sales table connects the Customers, Products, and Stores tables using foreign keys.

- Customers → Sales: One customer can have many sales.
- Products → Sales: One product can appear in many sales.
- Stores → Sales: One store can have many sales.

Foreign Keys in Sales:
- customer_id references Customers(customer_id)
- product_id references Products(product_id)
- store_id references Stores(store_id)


## 5. Normalization

The database is normalized up to Third Normal Form (3NF).

### First Normal Form (1NF)

All tables contain atomic values, and each column stores a single value. There are no repeating groups or multi-valued columns.

### Second Normal Form (2NF)

Each table has a primary key, and all non-key attributes depend on the complete primary key.

### Third Normal Form (3NF)

There are no transitive dependencies. Customer details, product details, and store details are stored in their respective tables instead of being repeated in the Sales table.

This reduces data redundancy and improves data consistency.


## 6. SQL Analysis and Queries

The project includes different SQL queries to analyze retail sales data.

### JOIN Queries

JOINs are used to combine data from multiple tables.

Examples:
- Customer details with product and sales information.
- Customer, product, store, sale date, and quantity details.

### GROUP BY

GROUP BY is used to calculate the total quantity sold for each product.

### HAVING

HAVING is used to filter products based on their total quantity sold.

### Subqueries

Subqueries are used to:
- Find products priced above the average product price.
- Find customers who have made at least one purchase.

### Sales Analysis

The project calculates:
- Product-wise total sales.
- Store-wise total sales.


## 7. Advanced SQL Features

### View

A view named `Sales_Details` was created to combine customer, product, store, and sales information.

It provides a simple way to access complete sales details without writing the JOIN query repeatedly.

### Stored Procedure

A stored procedure named `Get_Sales_Details` was created to retrieve the data from the `Sales_Details` view.

It can be executed whenever the complete sales details are required.

### Trigger

An `AFTER INSERT` trigger named `trg_AfterSaleInsert` was created on the Sales table.

Whenever a new sale is added, the trigger automatically records the sale ID and action in the `Sales_Log` table.

This demonstrates how triggers can be used for automatic logging.


## 8. Project Conclusion

This project demonstrates how SQL Server can be used to design, manage, and analyze a retail database.

The project covers database design, primary keys, foreign keys, normalization up to 3NF, table relationships, data analysis, views, stored procedures, and triggers.

The analysis helps identify product sales performance, store-wise sales, customer activity, and overall retail transaction patterns.

This project can be further extended by adding more sales data and creating dashboards using Power BI.