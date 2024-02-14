Sales Insights Data Analysis

Data Analysis using SQL

--Tables we are Using--
SELECT * FROM sales.transactions;

SELECT * FROM sales.customers;

SELECT * FROM sales.products;

SELECT * FROM sales.markets;

SELECT * FROM sales.date;

--How many total records are there in Transactions--
SELECT count(*) FROM sales.transactions;

--How many total records are there in Customers--
SELECT count(*) FROM sales.customers;

--Transactions only from Chennai--
SELECT * FROM sales.transactions
where market_code = "Mark001" ;

-How many transcations performed in Chennai--
SELECT COUNT(*) FROM sales.transactions
where market_code = "Mark001" ;

--How many transcations have USD currency--
SELECT * FROM sales.transactions
where currency = "USD" ;

--Transcations in 2020--
SELECT * FROM sales.transactions
where EXTRACT(YEAR FROM order_date) = 2020;

--Transcations in 2020 joined by Date Table--
SELECT t.*, d.*
FROM sales.transactions t
INNER JOIN sales.date d
ON t.order_date = d.date
where YEAR = 2020; 

--Total revenue in year 2020--
SELECT SUM(sales_amount)
FROM sales.transactions t
JOIN sales.date d
ON t.order_date = d.date
where YEAR = 2020; 


--Total revenue in year 2019--
SELECT SUM(sales_amount)
FROM sales.transactions t
JOIN sales.date d
ON t.order_date = d.date
where YEAR = 2019; 

--Total revenue in Chennai and in the year 2020--
SELECT SUM(sales_amount)
FROM sales.transactions t
JOIN sales.date d
ON t.order_date = d.date
where YEAR = 2020 and market_code = "Mark001"; 

--Distinct Product that sold in Chennai--
SELECT distinct(product_code) FROM sales.transactions
where market_code = "Mark001"; 

