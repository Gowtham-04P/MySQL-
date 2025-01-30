/*#1069. Product Sales Analysis II 
Table: Sales

+-------------+-------+
| Column Name | Type  |
+-------------+-------+
| sale_id     | int   |
| product_id  | int   |
| year        | int   |
| quantity    | int   |
| price       | int   |
+-------------+-------+
sale_id is the primary key of this table.
product_id is a foreign key to Product table.
Note that the price is per unit.
Table: Product

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
+--------------+---------+
product_id is the primary key of this table.
 

Write an SQL query that reports the total quantity sold for every product id.

The query result format is in the following example:

Sales table:
+---------+------------+------+----------+-------+
| sale_id | product_id | year | quantity | price |
+---------+------------+------+----------+-------+ 
| 1       | 100        | 2008 | 10       | 5000  |
| 2       | 100        | 2009 | 12       | 5000  |
| 7       | 200        | 2011 | 15       | 9000  |
+---------+------------+------+----------+-------+

Product table:
+------------+--------------+
| product_id | product_name |
+------------+--------------+
| 100        | Nokia        |
| 200        | Apple        |
| 300        | Samsung      |
+------------+--------------+

Result table:
+--------------+----------------+
| product_id   | total_quantity |
+--------------+----------------+
| 100          | 22             |
| 200          | 15             |
+--------------+----------------+
*/
Create table Sales (sale_id int, product_id int, year int, quantity int, price int)
Create table Product (product_id int, product_name varchar(10))
Truncate table Sales
insert into Sales (sale_id, product_id, year, quantity, price) values ('1', '100', '2008', '10', '5000')
insert into Sales (sale_id, product_id, year, quantity, price) values ('2', '100', '2009', '12', '5000')
insert into Sales (sale_id, product_id, year, quantity, price) values ('7', '200', '2011', '15', '9000')
Truncate table Product
insert into Product (product_id, product_name) values ('100', 'Nokia')
insert into Product (product_id, product_name) values ('200', 'Apple')
insert into Product (product_id, product_name) values ('300', 'Samsung')

/* MySQL Query */
select product_id, sum(quantity) as total_quantity
from Sales
group by product_id

/* 1565. Unique Orders and Customers Per Month
Table: Orders

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| order_id      | int     |
| order_date    | date    |
| customer_id   | int     |
| invoice       | int     |
+---------------+---------+
order_id is the primary key for this table.
This table contains information about the orders made by customer_id.
 

Write an SQL query to find the number of unique orders and the number of unique customers with invoices > $20 for each different month.

Return the result table sorted in any order.

The query result format is in the following example:

Orders
+----------+------------+-------------+------------+
| order_id | order_date | customer_id | invoice    |
+----------+------------+-------------+------------+
| 1        | 2020-09-15 | 1           | 30         |
| 2        | 2020-09-17 | 2           | 90         |
| 3        | 2020-10-06 | 3           | 20         |
| 4        | 2020-10-20 | 3           | 21         |
| 5        | 2020-11-10 | 1           | 10         |
| 6        | 2020-11-21 | 2           | 15         |
| 7        | 2020-12-01 | 4           | 55         |
| 8        | 2020-12-03 | 4           | 77         |
| 9        | 2021-01-07 | 3           | 31         |
| 10       | 2021-01-15 | 2           | 20         |
+----------+------------+-------------+------------+

Result table:
+---------+-------------+----------------+
| month   | order_count | customer_count |
+---------+-------------+----------------+
| 2020-09 | 2           | 2              |
| 2020-10 | 1           | 1              |
| 2020-12 | 2           | 1              |
| 2021-01 | 1           | 1              |
+---------+-------------+----------------+
In September 2020 we have two orders from 2 different customers with invoices > $20.
In October 2020 we have two orders from 1 customer, and only one of the two orders has invoice > $20.
In November 2020 we have two orders from 2 different customers but invoices < $20, so we don't include that month.
In December 2020 we have two orders from 1 customer both with invoices > $20.
In January 2021 we have two orders from 2 different customers, but only one of them with invoice > $20.
*/
Create table If Not Exists Orders (order_id int, order_date date, customer_id int, invoice int)
Truncate table Orders
insert into Orders (order_id, order_date, customer_id, invoice) values ('1', '2020-09-15', '1', '30')
insert into Orders (order_id, order_date, customer_id, invoice) values ('2', '2020-09-17', '2', '90')
insert into Orders (order_id, order_date, customer_id, invoice) values ('3', '2020-10-06', '3', '20')
insert into Orders (order_id, order_date, customer_id, invoice) values ('4', '2020-10-20', '3', '21')
insert into Orders (order_id, order_date, customer_id, invoice) values ('5', '2020-11-10', '1', '10')
insert into Orders (order_id, order_date, customer_id, invoice) values ('6', '2020-11-21', '2', '15')
insert into Orders (order_id, order_date, customer_id, invoice) values ('7', '2020-12-01', '4', '55')
insert into Orders (order_id, order_date, customer_id, invoice) values ('8', '2020-12-03', '4', '77')
insert into Orders (order_id, order_date, customer_id, invoice) values ('9', '2021-01-07', '3', '31')
insert into Orders (order_id, order_date, customer_id, invoice) values ('10', '2021-01-15', '2', '20')

/* MySQL Query */
select left(order_date, 7) as month, count(distinct order_id) as order_count, 
	count(distinct customer_id) as customer_count
from orders
where invoice > 20
group by month

