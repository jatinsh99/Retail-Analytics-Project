CREATE DATABASE Retail_Analytics;


CREATE TABLE Customers
(
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(50)
);


CREATE TABLE Products
(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);


CREATE TABLE Stores
(
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50)
);


CREATE TABLE Sales
(
    sale_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    store_id INT,
    sale_date DATE,
    quantity INT,

    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (store_id) REFERENCES Stores(store_id)
);


INSERT INTO Customers (customer_id, first_name, last_name, email, city)
VALUES
(1, 'Rahul', 'Kumar', 'rahul.kumar@gmail.com', 'Delhi'),
(2, 'Aman', 'Sharma', 'aman.sharma@gmail.com', 'Mumbai'),
(3, 'Priya', 'Verma', 'priya.verma@gmail.com', 'Pune'),
(4, 'Neha', 'Singh', 'neha.singh@gmail.com', 'Delhi'),
(5, 'Rohit', 'Gupta', 'rohit.gupta@gmail.com', 'Jaipur'),
(6, 'Anjali', 'Mehta', 'anjali.mehta@gmail.com', 'Ahmedabad'),
(7, 'Vikas', 'Yadav', 'vikas.yadav@gmail.com', 'Lucknow'),
(8, 'Sneha', 'Patel', 'sneha.patel@gmail.com', 'Surat'),
(9, 'Arjun', 'Malhotra', 'arjun.malhotra@gmail.com', 'Chandigarh'),
(10, 'Kavya', 'Joshi', 'kavya.joshi@gmail.com', 'Bhopal'),
(11, 'Saurabh', 'Mishra', 'saurabh.mishra@gmail.com', 'Kanpur'),
(12, 'Pooja', 'Shah', 'pooja.shah@gmail.com', 'Mumbai'),
(13, 'Karan', 'Agarwal', 'karan.agarwal@gmail.com', 'Noida'),
(14, 'Riya', 'Kapoor', 'riya.kapoor@gmail.com', 'Delhi'),
(15, 'Nikhil', 'Chopra', 'nikhil.chopra@gmail.com', 'Pune'),
(16, 'Simran', 'Kaur', 'simran.kaur@gmail.com', 'Amritsar'),
(17, 'Mohit', 'Saxena', 'mohit.saxena@gmail.com', 'Agra'),
(18, 'Divya', 'Rao', 'divya.rao@gmail.com', 'Hyderabad'),
(19, 'Aditya', 'Nair', 'aditya.nair@gmail.com', 'Bengaluru'),
(20, 'Ishita', 'Bansal', 'ishita.bansal@gmail.com', 'Gurugram');

select * from customers;



INSERT INTO Products (product_id, product_name, category, price)
VALUES
(1, 'Laptop', 'Electronics', 55000.00),
(2, 'Wireless Mouse', 'Electronics', 800.00),
(3, 'Keyboard', 'Electronics', 1500.00),
(4, 'Smartphone', 'Electronics', 30000.00),
(5, 'Headphones', 'Electronics', 2500.00),
(6, 'T-Shirt', 'Clothing', 1200.00),
(7, 'Jeans', 'Clothing', 2200.00),
(8, 'Jacket', 'Clothing', 3500.00),
(9, 'Running Shoes', 'Footwear', 2800.00),
(10, 'Formal Shoes', 'Footwear', 3200.00),
(11, 'Backpack', 'Accessories', 1800.00),
(12, 'Watch', 'Accessories', 4500.00),
(13, 'Water Bottle', 'Home & Kitchen', 600.00),
(14, 'Coffee Maker', 'Home & Kitchen', 4500.00),
(15, 'Mixer Grinder', 'Home & Kitchen', 5500.00),
(16, 'Notebook', 'Stationery', 250.00),
(17, 'Pen Set', 'Stationery', 150.00),
(18, 'Office Chair', 'Furniture', 7500.00),
(19, 'Study Table', 'Furniture', 9000.00),
(20, 'Desk Lamp', 'Furniture', 1800.00);

select * from products;



INSERT INTO Stores (store_id, store_name, city)
VALUES
(1, 'Delhi Central Store', 'Delhi'),
(2, 'Mumbai Mall Store', 'Mumbai'),
(3, 'Pune City Store', 'Pune'),
(4, 'Jaipur Main Store', 'Jaipur'),
(5, 'Ahmedabad Plaza Store', 'Ahmedabad'),
(6, 'Lucknow Market Store', 'Lucknow'),
(7, 'Surat Central Store', 'Surat'),
(8, 'Chandigarh Mall Store', 'Chandigarh'),
(9, 'Bhopal City Store', 'Bhopal'),
(10, 'Noida Sector 18 Store', 'Noida'),
(11, 'Amritsar Main Store', 'Amritsar'),
(12, 'Agra Market Store', 'Agra'),
(13, 'Hyderabad Central Store', 'Hyderabad'),
(14, 'Bengaluru Tech Store', 'Bengaluru'),
(15, 'Gurugram Mall Store', 'Gurugram'),
(16, 'Kanpur City Store', 'Kanpur'),
(17, 'Indore Central Store', 'Indore'),
(18, 'Nagpur Market Store', 'Nagpur'),
(19, 'Kolkata Main Store', 'Kolkata'),
(20, 'Chennai Central Store', 'Chennai');

select * from stores;



INSERT INTO Sales
    (sale_id, customer_id, product_id, store_id, sale_date, quantity)
VALUES
(1, 1, 4, 1, '2026-08-01', 1),
(2, 2, 6, 2, '2026-08-02', 2),
(3, 3, 1, 3, '2026-08-03', 1),
(4, 4, 9, 1, '2026-08-04', 1),
(5, 5, 12, 4, '2026-08-05', 1),
(6, 6, 15, 5, '2026-08-06', 1),
(7, 7, 2, 6, '2026-08-07', 3),
(8, 8, 7, 7, '2026-08-08', 1),
(9, 9, 5, 8, '2026-08-09', 2),
(10, 10, 18, 9, '2026-08-10', 1),
(11, 11, 3, 10, '2026-08-11', 2),
(12, 12, 14, 2, '2026-08-12', 1),
(13, 13, 20, 10, '2026-08-13', 2),
(14, 14, 8, 1, '2026-08-14', 1),
(15, 15, 10, 3, '2026-08-15', 1),
(16, 16, 11, 11, '2026-08-16', 2),
(17, 17, 13, 12, '2026-08-17', 1),
(18, 18, 16, 13, '2026-08-18', 5),
(19, 19, 19, 14, '2026-08-19', 1),
(20, 20, 17, 15, '2026-08-20', 4),
(21, 1, 1, 1, '2026-08-21', 1),
(22, 2, 4, 2, '2026-08-22', 1),
(23, 3, 5, 3, '2026-08-23', 2),
(24, 4, 7, 1, '2026-08-24', 2),
(25, 5, 2, 4, '2026-08-25', 3),
(26, 6, 18, 5, '2026-08-26', 1),
(27, 7, 6, 6, '2026-08-27', 2),
(28, 8, 9, 7, '2026-08-28', 1),
(29, 9, 12, 8, '2026-08-29', 1),
(30, 10, 15, 9, '2026-08-30', 2);

select * from sales;


SELECT
    s.sale_id,
    c.first_name,
    c.last_name,
    p.product_name,
    st.store_name,
    s.sale_date,
    s.quantity
FROM Sales s
JOIN Customers c
    ON s.customer_id = c.customer_id
JOIN Products p
    ON s.product_id = p.product_id
JOIN Stores st
    ON s.store_id = st.store_id;


select 
customers.first_name,
customers.last_name,
products.product_name,
sales.quantity
from customers
join sales
on sales.customer_id = customers.customer_id
join products 
on sales.product_id = products.product_id


SELECT
    customers.first_name,
    products.product_name,
    stores.store_name,
    sales.sale_date
FROM customers
JOIN sales
    ON sales.customer_id = customers.customer_id
JOIN products
    ON sales.product_id = products.product_id
JOIN stores
    ON sales.store_id = stores.store_id;


 select 
 products.product_name,
sum(quantity) as Total_quantity
from products
join sales
on products.product_id = sales.product_id
group by product_name


select 
products.product_name,
SUM(quantity) as Total_quanlity
from products
join sales
on products.product_id = sales.product_id
group by product_name
having SUM(quantity) > 3


select 
product_name,
price
from products
where price > (
select AVG(price) 
from products
);


 select 
 first_name,
 last_name
 from customers
 where customer_id in 
(
 select customer_id
 from sales
 )


   CREATE VIEW Sales_Details AS
   SELECT
    customers.first_name,
    customers.last_name,
    products.product_name,
    stores.store_name,
    sales.sale_date,
    sales.quantity
FROM customers
JOIN sales
    ON sales.customer_id = customers.customer_id
JOIN products
    ON sales.product_id = products.product_id
JOIN stores
    ON sales.store_id = stores.store_id; 

select * from Sales_Details;


    CREATE PROCEDURE Get_Sales_Details
AS
BEGIN

    SELECT *
    FROM Sales_Details;

END;

EXEC Get_Sales_Details;


SELECT
    products.product_name,
    SUM(products.price * sales.quantity) AS total_sales
FROM products
JOIN sales
    ON products.product_id = sales.product_id
GROUP BY products.product_name;


SELECT
    stores.store_name,
    SUM(products.price * sales.quantity) AS total_sales
FROM stores
JOIN sales
    ON stores.store_id = sales.store_id
JOIN products
    ON sales.product_id = products.product_id
GROUP BY stores.store_name;


CREATE TABLE Sales_Log
(
    log_id INT IDENTITY(1,1) PRIMARY KEY,
    sale_id INT,
    action VARCHAR(50),
    log_date DATETIME DEFAULT GETDATE()
);


CREATE TRIGGER trg_AfterSaleInsert
ON Sales
AFTER INSERT
AS
BEGIN
    INSERT INTO Sales_Log (sale_id, action)
    SELECT sale_id, 'New Sale Added'
    FROM inserted;
END;


INSERT INTO Sales
    (sale_id, customer_id, product_id, store_id, sale_date, quantity)
VALUES
(31, 11, 4, 10, '2026-09-01', 1);

select * from sales_log;