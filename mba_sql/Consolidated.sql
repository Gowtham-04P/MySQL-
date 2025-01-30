1517. Find Users With Valid E-Mails

Table: Users
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| user_id       | int     |
| name          | varchar |
| mail          | varchar |
+---------------+---------+
user_id is the primary key for this table.
This table contains information of the users signed up in a website. Some e-mails are invalid.
 

Write an SQL query to find the users who have valid emails.

A valid e-mail has a prefix name and a domain where: 

The prefix name is a string that may contain letters (upper or lower case), digits, underscore '_', period '.' and/or dash '-'. The prefix name must start with a letter.
The domain is '@leetcode.com'.
Return the result table in any order.

The query result format is in the following example.

Users
+---------+-----------+-------------------------+
| user_id | name      | mail                    |
+---------+-----------+-------------------------+
| 1       | Winston   | winston@leetcode.com    |
| 2       | Jonathan  | jonathanisgreat         |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
| 5       | Marwan    | quarz#2020@leetcode.com |
| 6       | David     | david69@gmail.com       |
| 7       | Shapiro   | .shapo@leetcode.com     |
+---------+-----------+-------------------------+

Result table:
+---------+-----------+-------------------------+
| user_id | name      | mail                    |
+---------+-----------+-------------------------+
| 1       | Winston   | winston@leetcode.com    |
| 3       | Annabelle | bella-@leetcode.com     |
| 4       | Sally     | sally.come@leetcode.com |
+---------+-----------+-------------------------+
The mail of user 2 doesn't have a domain.
The mail of user 5 has # sign which is not allowed.
The mail of user 6 doesn't have leetcode domain.
The mail of user 7 starts with a period.
*/
Create table If Not Exists Users (user_id int, name varchar(30), mail varchar(50))
Truncate table Users
insert into Users (user_id, name, mail) values ('1', 'Winston', 'winston@leetcode.com')
insert into Users (user_id, name, mail) values ('2', 'Jonathan', 'jonathanisgreat')
insert into Users (user_id, name, mail) values ('3', 'Annabelle', 'bella-@leetcode.com')
insert into Users (user_id, name, mail) values ('4', 'Sally', 'sally.come@leetcode.com')
insert into Users (user_id, name, mail) values ('5', 'Marwan', 'quarz#2020@leetcode.com')
insert into Users (user_id, name, mail) values ('6', 'David', 'david69@gmail.com')
insert into Users (user_id, name, mail) values ('7', 'Shapiro', '.shapo@leetcode.com')

/* 

1683. Invalid Tweets

Table: Tweets

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| tweet_id       | int     |
| content        | varchar |
+----------------+---------+
tweet_id is the primary key for this table.
This table contains all the tweets in a social media app.
 

Write an SQL query to find the IDs of the invalid tweets. The tweet is invalid if the number of characters used in the content of the tweet is strictly greater than 15.

Return the result table in any order.

The query result format is in the following example:

 

Tweets table:
+----------+----------------------------------+
| tweet_id | content                          |
+----------+----------------------------------+
| 1        | Vote for Biden                   |
| 2        | Let us make America great again! |
+----------+----------------------------------+

Result table:
+----------+
| tweet_id |
+----------+
| 2        |
+----------+
Tweet 1 has length = 14. It is a valid tweet.
Tweet 2 has length = 32. It is an invalid tweet.
*/
Create table If Not Exists Tweets(tweet_id int, content varchar(50))
Truncate table Tweets
insert into Tweets (tweet_id, content) values ('1', 'Vote for Biden')
insert into Tweets (tweet_id, content) values ('2', 'Let us make America great again!')


/* 1757. Recyclable and Low Fat Products
Table: Products

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| product_id  | int     |
| low_fats    | enum    |
| recyclable  | enum    |
+-------------+---------+
product_id is the primary key for this table.
low_fats is an ENUM of type ('Y', 'N') where 'Y' means this product is low fat and 'N' means it is not.
recyclable is an ENUM of types ('Y', 'N') where 'Y' means this product is recyclable and 'N' means it is not.
 

Write an SQL query to find the ids of products that are both low fat and recyclable.

Return the result table in any order.

The query result format is in the following example:

 

Products table:
+-------------+----------+------------+
| product_id  | low_fats | recyclable |
+-------------+----------+------------+
| 0           | Y        | N          |
| 1           | Y        | Y          |
| 2           | N        | Y          |
| 3           | Y        | Y          |
| 4           | N        | N          |
+-------------+----------+------------+
Result table:
+-------------+
| product_id  |
+-------------+
| 1           |
| 3           |
+-------------+
Only products 1 and 3 are both low fat and recyclable.
*/
Create table If Not Exists Products (product_id int, low_fats ENUM('Y', 'N'), recyclable ENUM('Y','N'))
Truncate table Products
insert into Products (product_id, low_fats, recyclable) values ('0', 'Y', 'N')
insert into Products (product_id, low_fats, recyclable) values ('1', 'Y', 'Y')
insert into Products (product_id, low_fats, recyclable) values ('2', 'N', 'Y')
insert into Products (product_id, low_fats, recyclable) values ('3', 'Y', 'Y')
insert into Products (product_id, low_fats, recyclable) values ('4', 'N', 'N')

/*

#584. Find Customer Referee 

Given a table customer holding customers information and the referee.

+------+------+-----------+
| id   | name | referee_id|
+------+------+-----------+
|    1 | Will |      NULL |
|    2 | Jane |      NULL |
|    3 | Alex |         2 |
|    4 | Bill |      NULL |
|    5 | Zack |         1 |
|    6 | Mark |         2 |
+------+------+-----------+
Write a query to return the list of customers NOT referred by the person with id '2'.

For the sample data above, the result is:

+------+
| name |
+------+
| Will |
| Jane |
| Bill |
| Zack |
+------+
*/

CREATE TABLE IF NOT EXISTS customer (id INT,name VARCHAR(25),referee_id INT);
Truncate table customer
insert into customer (id, name, referee_id) values ('1', 'Will', 'None')
insert into customer (id, name, referee_id) values ('2', 'Jane', 'None')
insert into customer (id, name, referee_id) values ('3', 'Alex', '2')
insert into customer (id, name, referee_id) values ('4', 'Bill', 'None')
insert into customer (id, name, referee_id) values ('5', 'Zack', '1')
insert into customer (id, name, referee_id) values ('6', 'Mark', '2')

/*

#595. Big Countries 

There is a table World
+-----------------+------------+------------+--------------+---------------+
| name            | continent  | area       | population   | gdp           |
+-----------------+------------+------------+--------------+---------------+
| Afghanistan     | Asia       | 652230     | 25500100     | 20343000      |
| Albania         | Europe     | 28748      | 2831741      | 12960000      |
| Algeria         | Africa     | 2381741    | 37100000     | 188681000     |
| Andorra         | Europe     | 468        | 78115        | 3712000       |
| Angola          | Africa     | 1246700    | 20609294     | 100990000     |
+-----------------+------------+------------+--------------+---------------+
A country is big if it has an area of bigger than 3 million square km or a population of more than 25 million.

Write a SQL solution to output big countries' name, population and area.

For example, according to the above table, we should output:

+--------------+-------------+--------------+
| name         | population  | area         |
+--------------+-------------+--------------+
| Afghanistan  | 25500100    | 652230       |
| Algeria      | 37100000    | 2381741      |
+--------------+-------------+--------------+
*/

Create table If Not Exists World (name varchar(255), continent varchar(255), area int, population int, gdp int)
Truncate table World
insert into World (name, continent, area, population, gdp) values ('Afghanistan', 'Asia', '652230', '25500100', '20343000000')
insert into World (name, continent, area, population, gdp) values ('Albania', 'Europe', '28748', '2831741', '12960000000')
insert into World (name, continent, area, population, gdp) values ('Algeria', 'Africa', '2381741', '37100000', '188681000000')
insert into World (name, continent, area, population, gdp) values ('Andorra', 'Europe', '468', '78115', '3712000000')
insert into World (name, continent, area, population, gdp) values ('Angola', 'Africa', '1246700', '20609294', '100990000000')

/*


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


/* 1693. Daily Leads and Partners 
Table: DailySales

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| date_id     | date    |
| make_name   | varchar |
| lead_id     | int     |
| partner_id  | int     |
+-------------+---------+
This table does not have a primary key.
This table contains the date and the name of the product sold and the IDs of the lead and partner it was sold to.
The name consists of only lowercase English letters.
 

Write an SQL query that will, for each date_id and make_name, return the number of distinct lead_id's and distinct partner_id's.

Return the result table in any order.

The query result format is in the following example:

 

DailySales table:
+-----------+-----------+---------+------------+
| date_id   | make_name | lead_id | partner_id |
+-----------+-----------+---------+------------+
| 2020-12-8 | toyota    | 0       | 1          |
| 2020-12-8 | toyota    | 1       | 0          |
| 2020-12-8 | toyota    | 1       | 2          |
| 2020-12-7 | toyota    | 0       | 2          |
| 2020-12-7 | toyota    | 0       | 1          |
| 2020-12-8 | honda     | 1       | 2          |
| 2020-12-8 | honda     | 2       | 1          |
| 2020-12-7 | honda     | 0       | 1          |
| 2020-12-7 | honda     | 1       | 2          |
| 2020-12-7 | honda     | 2       | 1          |
+-----------+-----------+---------+------------+
Result table:
+-----------+-----------+--------------+-----------------+
| date_id   | make_name | unique_leads | unique_partners |
+-----------+-----------+--------------+-----------------+
| 2020-12-8 | toyota    | 2            | 3               |
| 2020-12-7 | toyota    | 1            | 2               |
| 2020-12-8 | honda     | 2            | 2               |
| 2020-12-7 | honda     | 3            | 2               |
+-----------+-----------+--------------+-----------------+
For 2020-12-8, toyota gets leads = [0, 1] and partners = [0, 1, 2] while honda gets leads = [1, 2] and partners = [1, 2].
For 2020-12-7, toyota gets leads = [0] and partners = [1, 2] while honda gets leads = [0, 1, 2] and partners = [1, 2].

*/
Create table If Not Exists DailySales(date_id date, make_name varchar(20), lead_id int, partner_id int)
Truncate table DailySales
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '0', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '1', '0')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '1', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'toyota', '0', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'toyota', '0', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'honda', '1', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'honda', '2', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '0', '1')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '1', '2')
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '2', '1')

/* 1741. Find Total Time Spent by Each Employee
Table: Employees

+-------------+------+
| Column Name | Type |
+-------------+------+
| emp_id      | int  |
| event_day   | date |
| in_time     | int  |
| out_time    | int  |
+-------------+------+
(emp_id, event_day, in_time) is the primary key of this table.
The table shows the employees' entries and exits in an office.
event_day is the day at which this event happened, in_time is the minute at which the employee entered the office, and out_time is the minute at which they left the office.
in_time and out_time are between 1 and 1440.
It is guaranteed that no two events on the same day intersect in time, and in_time < out_time.
 

Write an SQL query to calculate the total time in minutes spent by each employee on each day at the office. Note that within one day, an employee can enter and leave more than once. The time spent in the office for a single entry is out_time - in_time.

Return the result table in any order.

The query result format is in the following example:

Employees table:
+--------+------------+---------+----------+
| emp_id | event_day  | in_time | out_time |
+--------+------------+---------+----------+
| 1      | 2020-11-28 | 4       | 32       |
| 1      | 2020-11-28 | 55      | 200      |
| 1      | 2020-12-03 | 1       | 42       |
| 2      | 2020-11-28 | 3       | 33       |
| 2      | 2020-12-09 | 47      | 74       |
+--------+------------+---------+----------+
Result table:
+------------+--------+------------+
| day        | emp_id | total_time |
+------------+--------+------------+
| 2020-11-28 | 1      | 173        |
| 2020-11-28 | 2      | 30         |
| 2020-12-03 | 1      | 41         |
| 2020-12-09 | 2      | 27         |
+------------+--------+------------+
Employee 1 has three events: two on day 2020-11-28 with a total of (32 - 4) + (200 - 55) = 173, and one on day 2020-12-03 with a total of (42 - 1) = 41.
Employee 2 has two events: one on day 2020-11-28 with a total of (33 - 3) = 30, and one on day 2020-12-09 with a total of (74 - 47) = 27.
*/
Create table If Not Exists Employees(emp_id int, event_day date, in_time int, out_time int)
Truncate table Employees
insert into Employees (emp_id, event_day, in_time, out_time) values ('1', '2020-11-28', '4', '32')
insert into Employees (emp_id, event_day, in_time, out_time) values ('1', '2020-11-28', '55', '200')
insert into Employees (emp_id, event_day, in_time, out_time) values ('1', '2020-12-3', '1', '42')
insert into Employees (emp_id, event_day, in_time, out_time) values ('2', '2020-11-28', '3', '33')
insert into Employees (emp_id, event_day, in_time, out_time) values ('2', '2020-12-9', '47', '74')

/* 1141. User Activity for the Past 30 Days I
Table: Activity

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| user_id       | int     |
| session_id    | int     |
| activity_date | date    |
| activity_type | enum    |
+---------------+---------+
There is no primary key for this table, it may have duplicate rows.
The activity_type column is an ENUM of type ('open_session', 'end_session', 'scroll_down', 'send_message').
The table shows the user activities for a social media website. 
Note that each session belongs to exactly one user.
 

Write an SQL query to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. A user was active on some day if he/she made at least one activity on that day.

The query result format is in the following example:

Activity table:
+---------+------------+---------------+---------------+
| user_id | session_id | activity_date | activity_type |
+---------+------------+---------------+---------------+
| 1       | 1          | 2019-07-20    | open_session  |
| 1       | 1          | 2019-07-20    | scroll_down   |
| 1       | 1          | 2019-07-20    | end_session   |
| 2       | 4          | 2019-07-20    | open_session  |
| 2       | 4          | 2019-07-21    | send_message  |
| 2       | 4          | 2019-07-21    | end_session   |
| 3       | 2          | 2019-07-21    | open_session  |
| 3       | 2          | 2019-07-21    | send_message  |
| 3       | 2          | 2019-07-21    | end_session   |
| 4       | 3          | 2019-06-25    | open_session  |
| 4       | 3          | 2019-06-25    | end_session   |
+---------+------------+---------------+---------------+

Result table:
+------------+--------------+ 
| day        | active_users |
+------------+--------------+ 
| 2019-07-20 | 2            |
| 2019-07-21 | 2            |
+------------+--------------+ 
Note that we do not care about days with zero active users.
*/
Create table If Not Exists Activity (user_id int, session_id int, activity_date date, activity_type ENUM('open_session', 'end_session', 'scroll_down', 'send_message'))
Truncate table Activity
insert into Activity (user_id, session_id, activity_date, activity_type) values ('1', '1', '2019-07-20', 'open_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('1', '1', '2019-07-20', 'scroll_down')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('1', '1', '2019-07-20', 'end_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('2', '4', '2019-07-20', 'open_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('2', '4', '2019-07-21', 'send_message')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('2', '4', '2019-07-21', 'end_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('3', '2', '2019-07-21', 'open_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('3', '2', '2019-07-21', 'send_message')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('3', '2', '2019-07-21', 'end_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('4', '3', '2019-06-25', 'open_session')
insert into Activity (user_id, session_id, activity_date, activity_type) values ('4', '3', '2019-06-25', 'end_session')


/*#511. Game Play Analysis I */
/*
Table: Activity

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
+--------------+---------+
(player_id, event_date) is the primary key of this table.
This table shows the activity of players of some game.
Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on some day using some device.
 

Write an SQL query that reports the first login date for each player.

The query result format is in the following example:

Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-05-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+

Result table:
+-----------+-------------+
| player_id | first_login |
+-----------+-------------+
| 1         | 2016-03-01  |
| 2         | 2017-06-25  |
| 3         | 2016-03-02  |
+-----------+-------------+
*/
Create table If Not Exists Activity (player_id int, device_id int, event_date date, games_played int)
Truncate table Activity
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-03-01', '5')
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-05-02', '6')
insert into Activity (player_id, device_id, event_date, games_played) values ('2', '3', '2017-06-25', '1')
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '1', '2016-03-02', '0')
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '4', '2018-07-03', '5')


/*#596. Classes More Than 5 Students 
There is a table courses with columns: student and class

Please list out all classes which have more than or equal to 5 students.

For example, the table:

+---------+------------+
| student | class      |
+---------+------------+
| A       | Math       |
| B       | English    |
| C       | Math       |
| D       | Biology    |
| E       | Math       |
| F       | Computer   |
| G       | Math       |
| H       | Math       |
| I       | Math       |
+---------+------------+
Should output:

+---------+
| class   |
+---------+
| Math    |
+---------+
*/
Create table If Not Exists courses (student varchar(255), class varchar(255))
Truncate table courses
insert into courses (student, class) values ('A', 'Math')
insert into courses (student, class) values ('B', 'English')
insert into courses (student, class) values ('C', 'Math')
insert into courses (student, class) values ('D', 'Biology')
insert into courses (student, class) values ('E', 'Math')
insert into courses (student, class) values ('F', 'Computer')
insert into courses (student, class) values ('G', 'Math')
insert into courses (student, class) values ('H', 'Math')
insert into courses (student, class) values ('I', 'Math')

/*#1050. Actors and Directors Who Cooperated At Least Three Times 
Table: ActorDirector

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| actor_id    | int     |
| director_id | int     |
| timestamp   | int     |
+-------------+---------+
timestamp is the primary key column for this table.
 

Write a SQL query for a report that provides the pairs (actor_id, director_id) where the actor have cooperated with the director at least 3 times.

Example:

ActorDirector table:
+-------------+-------------+-------------+
| actor_id    | director_id | timestamp   |
+-------------+-------------+-------------+
| 1           | 1           | 0           |
| 1           | 1           | 1           |
| 1           | 1           | 2           |
| 1           | 2           | 3           |
| 1           | 2           | 4           |
| 2           | 1           | 5           |
| 2           | 1           | 6           |
+-------------+-------------+-------------+

Result table:
+-------------+-------------+
| actor_id    | director_id |
+-------------+-------------+
| 1           | 1           |
+-------------+-------------+
The only pair is (1, 1) where they cooperated exactly 3 times.
*/
Create table If Not Exists ActorDirector (actor_id int, director_id int, timestamp int)
Truncate table ActorDirector
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '0')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '1')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '1', '2')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '2', '3')
insert into ActorDirector (actor_id, director_id, timestamp) values ('1', '2', '4')
insert into ActorDirector (actor_id, director_id, timestamp) values ('2', '1', '5')
insert into ActorDirector (actor_id, director_id, timestamp) values ('2', '1', '6')

/* 1322. Ads Performance
Table: Ads

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| ad_id         | int     |
| user_id       | int     |
| action        | enum    |
+---------------+---------+
(ad_id, user_id) is the primary key for this table.
Each row of this table contains the ID of an Ad, the ID of a user and the action taken by this user regarding this Ad.
The action column is an ENUM type of ('Clicked', 'Viewed', 'Ignored').
 

A company is running Ads and wants to calculate the performance of each Ad.

Performance of the Ad is measured using Click-Through Rate (CTR) where:



Write an SQL query to find the ctr of each Ad.

Round ctr to 2 decimal points. Order the result table by ctr in descending order and by ad_id in ascending order in case of a tie.

The query result format is in the following example:

Ads table:
+-------+---------+---------+
| ad_id | user_id | action  |
+-------+---------+---------+
| 1     | 1       | Clicked |
| 2     | 2       | Clicked |
| 3     | 3       | Viewed  |
| 5     | 5       | Ignored |
| 1     | 7       | Ignored |
| 2     | 7       | Viewed  |
| 3     | 5       | Clicked |
| 1     | 4       | Viewed  |
| 2     | 11      | Viewed  |
| 1     | 2       | Clicked |
+-------+---------+---------+
Result table:
+-------+-------+
| ad_id | ctr   |
+-------+-------+
| 1     | 66.67 |
| 3     | 50.00 |
| 2     | 33.33 |
| 5     | 0.00  |
+-------+-------+
for ad_id = 1, ctr = (2/(2+1)) * 100 = 66.67
for ad_id = 2, ctr = (1/(1+2)) * 100 = 33.33
for ad_id = 3, ctr = (1/(1+1)) * 100 = 50.00
for ad_id = 5, ctr = 0.00, Note that ad_id = 5 has no clicks or views.
Note that we don't care about Ignored Ads.
Result table is ordered by the ctr. in case of a tie we order them by ad_id
*/
Create table If Not Exists Ads (ad_id int, user_id int, action ENUM('Clicked', 'Viewed', 'Ignored'))
Truncate table Ads
insert into Ads (ad_id, user_id, action) values ('1', '1', 'Clicked')
insert into Ads (ad_id, user_id, action) values ('2', '2', 'Clicked')
insert into Ads (ad_id, user_id, action) values ('3', '3', 'Viewed')
insert into Ads (ad_id, user_id, action) values ('5', '5', 'Ignored')
insert into Ads (ad_id, user_id, action) values ('1', '7', 'Ignored')
insert into Ads (ad_id, user_id, action) values ('2', '7', 'Viewed')
insert into Ads (ad_id, user_id, action) values ('3', '5', 'Clicked')
insert into Ads (ad_id, user_id, action) values ('1', '4', 'Viewed')
insert into Ads (ad_id, user_id, action) values ('2', '11', 'Viewed')
insert into Ads (ad_id, user_id, action) values ('1', '2', 'Clicked')

/* 1484. Group Sold Products By The Date
Table Activities:

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| sell_date   | date    |
| product     | varchar |
+-------------+---------+
There is no primary key for this table, it may contains duplicates.
Each row of this table contains the product name and the date it was sold in a market.
 

Write an SQL query to find for each date, the number of distinct products sold and their names.

The sold-products names for each date should be sorted lexicographically. 

Return the result table ordered by sell_date.

The query result format is in the following example.

Activities table:
+------------+-------------+
| sell_date  | product     |
+------------+-------------+
| 2020-05-30 | Headphone   |
| 2020-06-01 | Pencil      |
| 2020-06-02 | Mask        |
| 2020-05-30 | Basketball  |
| 2020-06-01 | Bible       |
| 2020-06-02 | Mask        |
| 2020-05-30 | T-Shirt     |
+------------+-------------+

Result table:
+------------+----------+------------------------------+
| sell_date  | num_sold | products                     |
+------------+----------+------------------------------+
| 2020-05-30 | 3        | Basketball,Headphone,T-shirt |
| 2020-06-01 | 2        | Bible,Pencil                 |
| 2020-06-02 | 1        | Mask                         |
+------------+----------+------------------------------+
For 2020-05-30, Sold items were (Headphone, Basketball, T-shirt), we sort them lexicographically and separate them by comma.
For 2020-06-01, Sold items were (Pencil, Bible), we sort them lexicographically and separate them by comma.
For 2020-06-02, Sold item is (Mask), we just return it.
*/
Create table If Not Exists Activities (sell_date date, product varchar(20))
Truncate table Activities
insert into Activities (sell_date, product) values ('2020-05-30', 'Headphone')
insert into Activities (sell_date, product) values ('2020-06-01', 'Pencil')
insert into Activities (sell_date, product) values ('2020-06-02', 'Mask')
insert into Activities (sell_date, product) values ('2020-05-30', 'Basketball')
insert into Activities (sell_date, product) values ('2020-06-01', 'Bible')
insert into Activities (sell_date, product) values ('2020-06-02', 'Mask')
insert into Activities (sell_date, product) values ('2020-05-30', 'T-Shirt')

/* 1543. Fix Product Name Format
Table: Sales

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| sale_id      | int     |
| product_name | varchar |
| sale_date    | date    |
+--------------+---------+
sale_id is the primary key for this table.
Each row of this table contains the product name and the date it was sold.
 

Since table Sales was filled manually in the year 2000, product_name may contain leading and/or trailing white spaces, also they are case-insensitive.

Write an SQL query to report

product_name in lowercase without leading or trailing white spaces.
sale_date in the format ('YYYY-MM').
total the number of times the product was sold in this month.
Return the result table ordered by product_name in ascending order. In case of a tie, order it by sale_date in ascending order.

The query result format is in the following example.

 

Sales
+---------+--------------+------------+
| sale_id | product_name | sale_date  |
+---------+--------------+------------+
| 1       | LCPHONE      | 2000-01-16 |
| 2       | LCPhone      | 2000-01-17 |
| 3       | LcPhOnE      | 2000-02-18 |
| 4       | LCKeyCHAiN   | 2000-02-19 |
| 5       | LCKeyChain   | 2000-02-28 |
| 6       | Matryoshka   | 2000-03-31 |
+---------+--------------+------------+

Result table:
+--------------+-----------+-------+
| product_name | sale_date | total |
+--------------+-----------+-------+
| lckeychain   | 2000-02   | 2     |
| lcphone      | 2000-01   | 2     |
| lcphone      | 2000-02   | 1     |
| matryoshka   | 2000-03   | 1     |
+--------------+-----------+-------+
In January, 2 LcPhones were sold, please note that the product names are not case sensitive and may contain spaces.
In Februery, 2 LCKeychains and 1 LCPhone were sold.
In March, 1 matryoshka was sold.
*/
Create table If Not Exists Sales (sale_id int, product_name varchar(30), sale_date date)
Truncate table Sales
insert into Sales (sale_id, product_name, sale_date) values ('1', 'LCPHONE', '2000-01-16')
insert into Sales (sale_id, product_name, sale_date) values ('2', 'LCPhone', '2000-01-17')
insert into Sales (sale_id, product_name, sale_date) values ('3', 'LcPhOnE', '2000-02-18')
insert into Sales (sale_id, product_name, sale_date) values ('4', 'LCKeyCHAiN', '2000-02-19')
insert into Sales (sale_id, product_name, sale_date) values ('5', 'LCKeyChain', '2000-02-28')
insert into Sales (sale_id, product_name, sale_date) values ('6', 'Matryoshka', '2000-03-31')


/* 1661. Average Time of Process per Machine
Table: Activity

+----------------+---------+
| Column Name    | Type    |
+----------------+---------+
| machine_id     | int     |
| process_id     | int     |
| activity_type  | enum    |
| timestamp      | float   |
+----------------+---------+
The table shows the user activities for a factory website.
(machine_id, process_id, activity_type) is the primary key of this table.
machine_id is the ID of a machine.
process_id is the ID of a process running on the machine with ID machine_id.
activity_type is an ENUM of type ('start', 'end').
timestamp is a float representing the current time in seconds.
'start' means the machine starts the process at the given timestamp and 'end' means the machine ends the process at the given timestamp.
The 'start' timestamp will always be before the 'end' timestamp for every (machine_id, process_id) pair.
 

There is a factory website that has several machines each running the same number of processes. Write an SQL query to find the average time each machine takes to complete a process.

The time to complete a process is the 'end' timestamp minus the 'start' timestamp. The average time is calculated by the total time to complete every process on the machine divided by the number of processes that were run.

The resulting table should have the machine_id along with the average time as processing_time, which should be rounded to 3 decimal places.

The query result format is in the following example:

 

Activity table:
+------------+------------+---------------+-----------+
| machine_id | process_id | activity_type | timestamp |
+------------+------------+---------------+-----------+
| 0          | 0          | start         | 0.712     |
| 0          | 0          | end           | 1.520     |
| 0          | 1          | start         | 3.140     |
| 0          | 1          | end           | 4.120     |
| 1          | 0          | start         | 0.550     |
| 1          | 0          | end           | 1.550     |
| 1          | 1          | start         | 0.430     |
| 1          | 1          | end           | 1.420     |
| 2          | 0          | start         | 4.100     |
| 2          | 0          | end           | 4.512     |
| 2          | 1          | start         | 2.500     |
| 2          | 1          | end           | 5.000     |
+------------+------------+---------------+-----------+

Result table:
+------------+-----------------+
| machine_id | processing_time |
+------------+-----------------+
| 0          | 0.894           |
| 1          | 0.995           |
| 2          | 1.456           |
+------------+-----------------+

There are 3 machines running 2 processes each.
Machine 0's average time is ((1.520 - 0.712) + (4.120 - 3.140)) / 2 = 0.894
Machine 1's average time is ((1.550 - 0.550) + (1.420 - 0.430)) / 2 = 0.995
Machine 2's average time is ((4.512 - 4.100) + (5.000 - 2.500)) / 2 = 1.456
*/
Create table If Not Exists Activity (machine_id int, process_id int, activity_type ENUM('start', 'end'), timestamp float)
Truncate table Activity
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('0', '0', 'start', '0.712')
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('0', '0', 'end', '1.52')
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('0', '1', 'start', '3.14')
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('0', '1', 'end', '4.12')
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('1', '0', 'start', '0.55')
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('1', '0', 'end', '1.55')
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('1', '1', 'start', '0.43')
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('1', '1', 'end', '1.42')
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('2', '0', 'start', '4.1')
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('2', '0', 'end', '4.512')
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('2', '1', 'start', '2.5')
insert into Activity (machine_id, process_id, activity_type, timestamp) values ('2', '1', 'end', '5')



/*#1113. Reported Posts 
Table: Actions

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| user_id       | int     |
| post_id       | int     |
| action_date   | date    | 
| action        | enum    |
| extra         | varchar |
+---------------+---------+
There is no primary key for this table, it may have duplicate rows.
The action column is an ENUM type of ('view', 'like', 'reaction', 'comment', 'report', 'share').
The extra column has optional information about the action such as a reason for report or a type of reaction. 
 

Write an SQL query that reports the number of posts reported yesterday for each report reason. Assume today is 2019-07-05.

The query result format is in the following example:

Actions table:
+---------+---------+-------------+--------+--------+
| user_id | post_id | action_date | action | extra  |
+---------+---------+-------------+--------+--------+
| 1       | 1       | 2019-07-01  | view   | null   |
| 1       | 1       | 2019-07-01  | like   | null   |
| 1       | 1       | 2019-07-01  | share  | null   |
| 2       | 4       | 2019-07-04  | view   | null   |
| 2       | 4       | 2019-07-04  | report | spam   |
| 3       | 4       | 2019-07-04  | view   | null   |
| 3       | 4       | 2019-07-04  | report | spam   |
| 4       | 3       | 2019-07-02  | view   | null   |
| 4       | 3       | 2019-07-02  | report | spam   |
| 5       | 2       | 2019-07-04  | view   | null   |
| 5       | 2       | 2019-07-04  | report | racism |
| 5       | 5       | 2019-07-04  | view   | null   |
| 5       | 5       | 2019-07-04  | report | racism |
+---------+---------+-------------+--------+--------+

Result table:
+---------------+--------------+
| report_reason | report_count |
+---------------+--------------+
| spam          | 1            |
| racism        | 2            |
+---------------+--------------+ 
Note that we only care about report reasons with non zero number of reports.
*/
Create table If Not Exists Actions (user_id int, post_id int, action_date date, action ENUM('view', 'like', 'reaction', 'comment', 'report', 'share'), extra varchar(10))
Truncate table Actions
insert into Actions (user_id, post_id, action_date, action, extra) values ('1', '1', '2019-07-01', 'view', 'None')
insert into Actions (user_id, post_id, action_date, action, extra) values ('1', '1', '2019-07-01', 'like', 'None')
insert into Actions (user_id, post_id, action_date, action, extra) values ('1', '1', '2019-07-01', 'share', 'None')
insert into Actions (user_id, post_id, action_date, action, extra) values ('2', '4', '2019-07-04', 'view', 'None')
insert into Actions (user_id, post_id, action_date, action, extra) values ('2', '4', '2019-07-04', 'report', 'spam')
insert into Actions (user_id, post_id, action_date, action, extra) values ('3', '4', '2019-07-04', 'view', 'None')
insert into Actions (user_id, post_id, action_date, action, extra) values ('3', '4', '2019-07-04', 'report', 'spam')
insert into Actions (user_id, post_id, action_date, action, extra) values ('4', '3', '2019-07-02', 'view', 'None')
insert into Actions (user_id, post_id, action_date, action, extra) values ('4', '3', '2019-07-02', 'report', 'spam')
insert into Actions (user_id, post_id, action_date, action, extra) values ('5', '2', '2019-07-04', 'view', 'None')
insert into Actions (user_id, post_id, action_date, action, extra) values ('5', '2', '2019-07-04', 'report', 'racism')
insert into Actions (user_id, post_id, action_date, action, extra) values ('5', '5', '2019-07-04', 'view', 'None')
insert into Actions (user_id, post_id, action_date, action, extra) values ('5', '5', '2019-07-04', 'report', 'racism')


/*#1148. Article Views I 
Table: Views

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| article_id    | int     |
| author_id     | int     |
| viewer_id     | int     |
| view_date     | date    |
+---------------+---------+
There is no primary key for this table, it may have duplicate rows.
Each row of this table indicates that some viewer viewed an article (written by some author) on some date. 
Note that equal author_id and viewer_id indicate the same person.
 

Write an SQL query to find all the authors that viewed at least one of their own articles, sorted in ascending order by their id.

The query result format is in the following example:

Views table:
+------------+-----------+-----------+------------+
| article_id | author_id | viewer_id | view_date  |
+------------+-----------+-----------+------------+
| 1          | 3         | 5         | 2019-08-01 |
| 1          | 3         | 6         | 2019-08-02 |
| 2          | 7         | 7         | 2019-08-01 |
| 2          | 7         | 6         | 2019-08-02 |
| 4          | 7         | 1         | 2019-07-22 |
| 3          | 4         | 4         | 2019-07-21 |
| 3          | 4         | 4         | 2019-07-21 |
+------------+-----------+-----------+------------+

Result table:
+------+
| id   |
+------+
| 4    |
| 7    |
+------+
*/
Create table If Not Exists Views (article_id int, author_id int, viewer_id int, view_date date)
Truncate table Views
insert into Views (article_id, author_id, viewer_id, view_date) values ('1', '3', '5', '2019-08-01')
insert into Views (article_id, author_id, viewer_id, view_date) values ('1', '3', '6', '2019-08-02')
insert into Views (article_id, author_id, viewer_id, view_date) values ('2', '7', '7', '2019-08-01')
insert into Views (article_id, author_id, viewer_id, view_date) values ('2', '7', '6', '2019-08-02')
insert into Views (article_id, author_id, viewer_id, view_date) values ('4', '7', '1', '2019-07-22')
insert into Views (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21')
insert into Views (article_id, author_id, viewer_id, view_date) values ('3', '4', '4', '2019-07-21')

week 4
/*183. Customers Who Never Order

Suppose that a website contains two tables, the Customers table and the Orders table. Write a SQL query to find all customers who never order anything.

Table: Customers.

+----+-------+
| Id | Name  |
+----+-------+
| 1  | Joe   |
| 2  | Henry |
| 3  | Sam   |
| 4  | Max   |
+----+-------+
Table: Orders.

+----+------------+
| Id | CustomerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
Using the above tables as example, return the following:

+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+
*/
Create table If Not Exists Customers (Id int, Name varchar(255))
Create table If Not Exists Orders (Id int, CustomerId int)
Truncate table Customers
insert into Customers (Id, Name) values ('1', 'Joe')
insert into Customers (Id, Name) values ('2', 'Henry')
insert into Customers (Id, Name) values ('3', 'Sam')
insert into Customers (Id, Name) values ('4', 'Max')
Truncate table Orders
insert into Orders (Id, CustomerId) values ('1', '3')
insert into Orders (Id, CustomerId) values ('2', '1')

/*#512. Game Play Analysis II 

Table: Activity

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| player_id    | int     |
| device_id    | int     |
| event_date   | date    |
| games_played | int     |
+--------------+---------+
(player_id, event_date) is the primary key of this table.
This table shows the activity of players of some game.
Each row is a record of a player who logged in and played a number of games (possibly 0) before logging out on some day using some device.
 

Write a SQL query that reports the device that is first logged in for each player.

The query result format is in the following example:

Activity table:
+-----------+-----------+------------+--------------+
| player_id | device_id | event_date | games_played |
+-----------+-----------+------------+--------------+
| 1         | 2         | 2016-03-01 | 5            |
| 1         | 2         | 2016-05-02 | 6            |
| 2         | 3         | 2017-06-25 | 1            |
| 3         | 1         | 2016-03-02 | 0            |
| 3         | 4         | 2018-07-03 | 5            |
+-----------+-----------+------------+--------------+

Result table:
+-----------+-----------+
| player_id | device_id |
+-----------+-----------+
| 1         | 2         |
| 2         | 3         |
| 3         | 1         |
+-----------+-----------+
*/

Create table If Not Exists Activity (player_id int, device_id int, event_date date, games_played int)
Truncate table Activity
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-03-01', '5')
insert into Activity (player_id, device_id, event_date, games_played) values ('1', '2', '2016-05-02', '6')
insert into Activity (player_id, device_id, event_date, games_played) values ('2', '3', '2017-06-25', '1')
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '1', '2016-03-02', '0')
insert into Activity (player_id, device_id, event_date, games_played) values ('3', '4', '2018-07-03', '5')

/* MySQL Query */
select player_id, device_id
from Activity
where (player_id, event_date) in
    (select player_id, min(event_date)
    from Activity 
    group by player_id);

/* 1350. Students With Invalid Departments
Table: Departments

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+
id is the primary key of this table.
The table has information about the id of each department of a university.
 

Table: Students

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
| department_id | int     |
+---------------+---------+
id is the primary key of this table.
The table has information about the id of each student at a university and the id of the department he/she studies at.
 

Write an SQL query to find the id and the name of all students who are enrolled in departments that no longer exists.

Return the result table in any order.

The query result format is in the following example:

Departments table:
+------+--------------------------+
| id   | name                     |
+------+--------------------------+
| 1    | Electrical Engineering   |
| 7    | Computer Engineering     |
| 13   | Bussiness Administration |
+------+--------------------------+

Students table:
+------+----------+---------------+
| id   | name     | department_id |
+------+----------+---------------+
| 23   | Alice    | 1             |
| 1    | Bob      | 7             |
| 5    | Jennifer | 13            |
| 2    | John     | 14            |
| 4    | Jasmine  | 77            |
| 3    | Steve    | 74            |
| 6    | Luis     | 1             |
| 8    | Jonathan | 7             |
| 7    | Daiana   | 33            |
| 11   | Madelynn | 1             |
+------+----------+---------------+

Result table:
+------+----------+
| id   | name     |
+------+----------+
| 2    | John     |
| 7    | Daiana   |
| 4    | Jasmine  |
| 3    | Steve    |
+------+----------+

John, Daiana, Steve and Jasmine are enrolled in departments 14, 33, 74 and 77 respectively. department 14, 33, 74 and 77 doesn't exist in the Departments table.
*/
Create table If Not Exists Departments (id int, name varchar(30))
Create table If Not Exists Students (id int, name varchar(30), department_id int)
Truncate table Departments
insert into Departments (id, name) values ('1', 'Electrical Engineering')
insert into Departments (id, name) values ('7', 'Computer Engineering')
insert into Departments (id, name) values ('13', 'Bussiness Administration')
Truncate table Students
insert into Students (id, name, department_id) values ('23', 'Alice', '1')
insert into Students (id, name, department_id) values ('1', 'Bob', '7')
insert into Students (id, name, department_id) values ('5', 'Jennifer', '13')
insert into Students (id, name, department_id) values ('2', 'John', '14')
insert into Students (id, name, department_id) values ('4', 'Jasmine', '77')
insert into Students (id, name, department_id) values ('3', 'Steve', '74')
insert into Students (id, name, department_id) values ('6', 'Luis', '1')
insert into Students (id, name, department_id) values ('8', 'Jonathan', '7')
insert into Students (id, name, department_id) values ('7', 'Daiana', '33')
insert into Students (id, name, department_id) values ('11', 'Madelynn', '1')

/*176. Second Highest Salary*/
Write a SQL query to get the second highest salary from the Employee table.

+----+--------+
| Id | Salary |
+----+--------+
| 1  | 100    |
| 2  | 200    |
| 3  | 300    |
+----+--------+
For example, given the above Employee table, the query should return 200 as the second highest salary. If there is no second highest salary, then the query should return null.

+---------------------+
| SecondHighestSalary |
+---------------------+
| 200                 |
+---------------------+

Q: Write a SQL query to get the second highest salary from the Employee table

Solution:

Create table If Not Exists Employee (Id int, Salary int)
Truncate table Employee
insert into Employee (Id, Salary) values ('1', '100')
insert into Employee (Id, Salary) values ('2', '200')
insert into Employee (Id, Salary) values ('3', '300')

/*182. Duplicate Emails

Write a SQL query to find all duplicate emails in a table named Person.

+----+---------+
| Id | Email   |
+----+---------+
| 1  | a@b.com |
| 2  | c@d.com |
| 3  | a@b.com |
+----+---------+
For example, your query should return the following for the above table:

+---------+
| Email   |
+---------+
| a@b.com |
+---------+
*/
Create table If Not Exists Person (Id int, Email varchar(255))
Truncate table Person
insert into Person (Id, Email) values ('1', 'a@b.com')
insert into Person (Id, Email) values ('2', 'c@d.com')
insert into Person (Id, Email) values ('3', 'a@b.com')

/*#1075. Project Employees I 
Table: Project

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| project_id  | int     |
| employee_id | int     |
+-------------+---------+
(project_id, employee_id) is the primary key of this table.
employee_id is a foreign key to Employee table.
Table: Employee

+------------------+---------+
| Column Name      | Type    |
+------------------+---------+
| employee_id      | int     |
| name             | varchar |
| experience_years | int     |
+------------------+---------+
employee_id is the primary key of this table.
 

Write an SQL query that reports the average experience years of all the employees for each project, rounded to 2 digits.

The query result format is in the following example:

Project table:
+-------------+-------------+
| project_id  | employee_id |
+-------------+-------------+
| 1           | 1           |
| 1           | 2           |
| 1           | 3           |
| 2           | 1           |
| 2           | 4           |
+-------------+-------------+

Employee table:
+-------------+--------+------------------+
| employee_id | name   | experience_years |
+-------------+--------+------------------+
| 1           | Khaled | 3                |
| 2           | Ali    | 2                |
| 3           | John   | 1                |
| 4           | Doe    | 2                |
+-------------+--------+------------------+

Result table:
+-------------+---------------+
| project_id  | average_years |
+-------------+---------------+
| 1           | 2.00          |
| 2           | 2.50          |
+-------------+---------------+
The average experience years for the first project is (3 + 2 + 1) / 3 = 2.00 and for the second project is (3 + 2) / 2 = 2.50
*/
Create table If Not Exists Project (project_id int, employee_id int)
Create table If Not Exists Employee (employee_id int, name varchar(10), experience_years int)
Truncate table Project
insert into Project (project_id, employee_id) values ('1', '1')
insert into Project (project_id, employee_id) values ('1', '2')
insert into Project (project_id, employee_id) values ('1', '3')
insert into Project (project_id, employee_id) values ('2', '1')
insert into Project (project_id, employee_id) values ('2', '4')
Truncate table Employee
insert into Employee (employee_id, name, experience_years) values ('1', 'Khaled', '3')
insert into Employee (employee_id, name, experience_years) values ('2', 'Ali', '2')
insert into Employee (employee_id, name, experience_years) values ('3', 'John', '1')
insert into Employee (employee_id, name, experience_years) values ('4', 'Doe', '2')

/*#1084. Sales Analysis III 
Table: Product

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| product_id   | int     |
| product_name | varchar |
| unit_price   | int     |
+--------------+---------+
product_id is the primary key of this table.
Table: Sales

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| seller_id   | int     |
| product_id  | int     |
| buyer_id    | int     |
| sale_date   | date    |
| quantity    | int     |
| price       | int     |
+------ ------+---------+
This table has no primary key, it can have repeated rows.
product_id is a foreign key to Product table.
 

Write an SQL query that reports the products that were only sold in spring 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.

The query result format is in the following example:

Product table:
+------------+--------------+------------+
| product_id | product_name | unit_price |
+------------+--------------+------------+
| 1          | S8           | 1000       |
| 2          | G4           | 800        |
| 3          | iPhone       | 1400       |
+------------+--------------+------------+

Sales table:
+-----------+------------+----------+------------+----------+-------+
| seller_id | product_id | buyer_id | sale_date  | quantity | price |
+-----------+------------+----------+------------+----------+-------+
| 1         | 1          | 1        | 2019-01-21 | 2        | 2000  |
| 1         | 2          | 2        | 2019-02-17 | 1        | 800   |
| 2         | 2          | 3        | 2019-06-02 | 1        | 800   |
| 3         | 3          | 4        | 2019-05-13 | 2        | 2800  |
+-----------+------------+----------+------------+----------+-------+

Result table:
+-------------+--------------+
| product_id  | product_name |
+-------------+--------------+
| 1           | S8           |
+-------------+--------------+
The product with id 1 was only sold in spring 2019 while the other two were sold after.
*/
Create table If Not Exists Product (product_id int, product_name varchar(10), unit_price int)
Create table If Not Exists Sales (seller_id int, product_id int, buyer_id int, sale_date date, quantity int, price int)
Truncate table Product
insert into Product (product_id, product_name, unit_price) values ('1', 'S8', '1000')
insert into Product (product_id, product_name, unit_price) values ('2', 'G4', '800')
insert into Product (product_id, product_name, unit_price) values ('3', 'iPhone', '1400')
Truncate table Sales
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('1', '1', '1', '2019-01-21', '2', '2000')
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('1', '2', '2', '2019-02-17', '1', '800')
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('2', '2', '3', '2019-06-02', '1', '800')
insert into Sales (seller_id, product_id, buyer_id, sale_date, quantity, price) values ('3', '3', '4', '2019-05-13', '2', '2800')

/* 1241. Number of Comments per Post
Table: Submissions

+---------------+----------+
| Column Name   | Type     |
+---------------+----------+
| sub_id        | int      |
| parent_id     | int      |
+---------------+----------+
There is no primary key for this table, it may have duplicate rows.
Each row can be a post or comment on the post.
parent_id is null for posts.
parent_id for comments is sub_id for another post in the table.
 

Write an SQL query to find number of comments per each post.

Result table should contain post_id and its corresponding number_of_comments, and must be sorted by post_id in ascending order.

Submissions may contain duplicate comments. You should count the number of unique comments per post.

Submissions may contain duplicate posts. You should treat them as one post.

The query result format is in the following example:

Submissions table:
+---------+------------+
| sub_id  | parent_id  |
+---------+------------+
| 1       | Null       |
| 2       | Null       |
| 1       | Null       |
| 12      | Null       |
| 3       | 1          |
| 5       | 2          |
| 3       | 1          |
| 4       | 1          |
| 9       | 1          |
| 10      | 2          |
| 6       | 7          |
+---------+------------+

Result table:
+---------+--------------------+
| post_id | number_of_comments |
+---------+--------------------+
| 1       | 3                  |
| 2       | 2                  |
| 12      | 0                  |
+---------+--------------------+

The post with id 1 has three comments in the table with id 3, 4 and 9. The comment with id 3 is repeated in the table, we counted it only once.
The post with id 2 has two comments in the table with id 5 and 10.
The post with id 12 has no comments in the table.
The comment with id 6 is a comment on a deleted post with id 7 so we ignored it.
*/

Create table If Not Exists Submissions (sub_id int, parent_id int)
Truncate table Submissions
insert into Submissions (sub_id, parent_id) values ('1', 'None')
insert into Submissions (sub_id, parent_id) values ('2', 'None')
insert into Submissions (sub_id, parent_id) values ('1', 'None')
insert into Submissions (sub_id, parent_id) values ('12', 'None')
insert into Submissions (sub_id, parent_id) values ('3', '1')
insert into Submissions (sub_id, parent_id) values ('5', '2')
insert into Submissions (sub_id, parent_id) values ('3', '1')
insert into Submissions (sub_id, parent_id) values ('4', '1')
insert into Submissions (sub_id, parent_id) values ('9', '1')
insert into Submissions (sub_id, parent_id) values ('10', '2')
insert into Submissions (sub_id, parent_id) values ('6', '7')

/* 1251. Average Selling Price
Table: Prices

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| start_date    | date    |
| end_date      | date    |
| price         | int     |
+---------------+---------+
(product_id, start_date, end_date) is the primary key for this table.
Each row of this table indicates the price of the product_id in the period from start_date to end_date.
For each product_id there will be no two overlapping periods. That means there will be no two intersecting periods for the same product_id.
 

Table: UnitsSold

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| purchase_date | date    |
| units         | int     |
+---------------+---------+
There is no primary key for this table, it may contain duplicates.
Each row of this table indicates the date, units and product_id of each product sold. 
 

Write an SQL query to find the average selling price for each product.

average_price should be rounded to 2 decimal places.

The query result format is in the following example:

Prices table:
+------------+------------+------------+--------+
| product_id | start_date | end_date   | price  |
+------------+------------+------------+--------+
| 1          | 2019-02-17 | 2019-02-28 | 5      |
| 1          | 2019-03-01 | 2019-03-22 | 20     |
| 2          | 2019-02-01 | 2019-02-20 | 15     |
| 2          | 2019-02-21 | 2019-03-31 | 30     |
+------------+------------+------------+--------+
 
UnitsSold table:
+------------+---------------+-------+
| product_id | purchase_date | units |
+------------+---------------+-------+
| 1          | 2019-02-25    | 100   |
| 1          | 2019-03-01    | 15    |
| 2          | 2019-02-10    | 200   |
| 2          | 2019-03-22    | 30    |
+------------+---------------+-------+

Result table:
+------------+---------------+
| product_id | average_price |
+------------+---------------+
| 1          | 6.96          |
| 2          | 16.96         |
+------------+---------------+
Average selling price = Total Price of Product / Number of products sold.
Average selling price for product 1 = ((100 * 5) + (15 * 20)) / 115 = 6.96
Average selling price for product 2 = ((200 * 15) + (30 * 30)) / 230 = 16.96
*/

Create table If Not Exists Prices (product_id int, start_date date, end_date date, price int)
Create table If Not Exists UnitsSold (product_id int, purchase_date date, units int)
Truncate table Prices
insert into Prices (product_id, start_date, end_date, price) values ('1', '2019-02-17', '2019-02-28', '5')
insert into Prices (product_id, start_date, end_date, price) values ('1', '2019-03-01', '2019-03-22', '20')
insert into Prices (product_id, start_date, end_date, price) values ('2', '2019-02-01', '2019-02-20', '15')
insert into Prices (product_id, start_date, end_date, price) values ('2', '2019-02-21', '2019-03-31', '30')
Truncate table UnitsSold
insert into UnitsSold (product_id, purchase_date, units) values ('1', '2019-02-25', '100')
insert into UnitsSold (product_id, purchase_date, units) values ('1', '2019-03-01', '15')
insert into UnitsSold (product_id, purchase_date, units) values ('2', '2019-02-10', '200')
insert into UnitsSold (product_id, purchase_date, units) values ('2', '2019-03-22', '30')

/* 1280. Students and Examinations
Table: Students

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| student_id    | int     |
| student_name  | varchar |
+---------------+---------+
student_id is the primary key for this table.
Each row of this table contains the ID and the name of one student in the school.
 

Table: Subjects

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| subject_name | varchar |
+--------------+---------+
subject_name is the primary key for this table.
Each row of this table contains the name of one subject in the school.
 

Table: Examinations

+--------------+---------+
| Column Name  | Type    |
+--------------+---------+
| student_id   | int     |
| subject_name | varchar |
+--------------+---------+
There is no primary key for this table. It may contain duplicates.
Each student from the Students table takes every course from Subjects table.
Each row of this table indicates that a student with ID student_id attended the exam of subject_name.
 

Write an SQL query to find the number of times each student attended each exam.

Order the result table by student_id and subject_name.

The query result format is in the following example:

Students table:
+------------+--------------+
| student_id | student_name |
+------------+--------------+
| 1          | Alice        |
| 2          | Bob          |
| 13         | John         |
| 6          | Alex         |
+------------+--------------+
Subjects table:
+--------------+
| subject_name |
+--------------+
| Math         |
| Physics      |
| Programming  |
+--------------+
Examinations table:
+------------+--------------+
| student_id | subject_name |
+------------+--------------+
| 1          | Math         |
| 1          | Physics      |
| 1          | Programming  |
| 2          | Programming  |
| 1          | Physics      |
| 1          | Math         |
| 13         | Math         |
| 13         | Programming  |
| 13         | Physics      |
| 2          | Math         |
| 1          | Math         |
+------------+--------------+
Result table:
+------------+--------------+--------------+----------------+
| student_id | student_name | subject_name | attended_exams |
+------------+--------------+--------------+----------------+
| 1          | Alice        | Math         | 3              |
| 1          | Alice        | Physics      | 2              |
| 1          | Alice        | Programming  | 1              |
| 2          | Bob          | Math         | 1              |
| 2          | Bob          | Physics      | 0              |
| 2          | Bob          | Programming  | 1              |
| 6          | Alex         | Math         | 0              |
| 6          | Alex         | Physics      | 0              |
| 6          | Alex         | Programming  | 0              |
| 13         | John         | Math         | 1              |
| 13         | John         | Physics      | 1              |
| 13         | John         | Programming  | 1              |
+------------+--------------+--------------+----------------+
The result table should contain all students and all subjects.
Alice attended Math exam 3 times, Physics exam 2 times and Programming exam 1 time.
Bob attended Math exam 1 time, Programming exam 1 time and didn't attend the Physics exam.
Alex didn't attend any exam.
John attended Math exam 1 time, Physics exam 1 time and Programming exam 1 time.
*/
Create table If Not Exists Students (student_id int, student_name varchar(20))
Create table If Not Exists Subjects (subject_name varchar(20))
Create table If Not Exists Examinations (student_id int, subject_name varchar(20))
Truncate table Students
insert into Students (student_id, student_name) values ('1', 'Alice')
insert into Students (student_id, student_name) values ('2', 'Bob')
insert into Students (student_id, student_name) values ('13', 'John')
insert into Students (student_id, student_name) values ('6', 'Alex')
Truncate table Subjects
insert into Subjects (subject_name) values ('Math')
insert into Subjects (subject_name) values ('Physics')
insert into Subjects (subject_name) values ('Programming')
Truncate table Examinations
insert into Examinations (student_id, subject_name) values ('1', 'Math')
insert into Examinations (student_id, subject_name) values ('1', 'Physics')
insert into Examinations (student_id, subject_name) values ('1', 'Programming')
insert into Examinations (student_id, subject_name) values ('2', 'Programming')
insert into Examinations (student_id, subject_name) values ('1', 'Physics')
insert into Examinations (student_id, subject_name) values ('1', 'Math')
insert into Examinations (student_id, subject_name) values ('13', 'Math')
insert into Examinations (student_id, subject_name) values ('13', 'Programming')
insert into Examinations (student_id, subject_name) values ('13', 'Physics')
insert into Examinations (student_id, subject_name) values ('2', 'Math')
insert into Examinations (student_id, subject_name) values ('1', 'Math')

/* 1327. List the Products Ordered in a Period
Table: Products

+------------------+---------+
| Column Name      | Type    |
+------------------+---------+
| product_id       | int     |
| product_name     | varchar |
| product_category | varchar |
+------------------+---------+
product_id is the primary key for this table.
This table contains data about the company's products.
Table: Orders

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| order_date    | date    |
| unit          | int     |
+---------------+---------+
There is no primary key for this table. It may have duplicate rows.
product_id is a foreign key to Products table.
unit is the number of products ordered in order_date.
 

Write an SQL query to get the names of products with greater than or equal to 100 units ordered in February 2020 and their amount.

Return result table in any order.

The query result format is in the following example:

 

Products table:
+-------------+-----------------------+------------------+
| product_id  | product_name          | product_category |
+-------------+-----------------------+------------------+
| 1           | Leetcode Solutions    | Book             |
| 2           | Jewels of Stringology | Book             |
| 3           | HP                    | Laptop           |
| 4           | Lenovo                | Laptop           |
| 5           | Leetcode Kit          | T-shirt          |
+-------------+-----------------------+------------------+

Orders table:
+--------------+--------------+----------+
| product_id   | order_date   | unit     |
+--------------+--------------+----------+
| 1            | 2020-02-05   | 60       |
| 1            | 2020-02-10   | 70       |
| 2            | 2020-01-18   | 30       |
| 2            | 2020-02-11   | 80       |
| 3            | 2020-02-17   | 2        |
| 3            | 2020-02-24   | 3        |
| 4            | 2020-03-01   | 20       |
| 4            | 2020-03-04   | 30       |
| 4            | 2020-03-04   | 60       |
| 5            | 2020-02-25   | 50       |
| 5            | 2020-02-27   | 50       |
| 5            | 2020-03-01   | 50       |
+--------------+--------------+----------+

Result table:
+--------------------+---------+
| product_name       | unit    |
+--------------------+---------+
| Leetcode Solutions | 130     |
| Leetcode Kit       | 100     |
+--------------------+---------+

Products with product_id = 1 is ordered in February a total of (60 + 70) = 130.
Products with product_id = 2 is ordered in February a total of 80.
Products with product_id = 3 is ordered in February a total of (2 + 3) = 5.
Products with product_id = 4 was not ordered in February 2020.
Products with product_id = 5 is ordered in February a total of (50 + 50) = 100.
*/
Create table If Not Exists Products (product_id int, product_name varchar(40), product_category varchar(40))
Create table If Not Exists Orders (product_id int, order_date date, unit int)
Truncate table Products
insert into Products (product_id, product_name, product_category) values ('1', 'Leetcode Solutions', 'Book')
insert into Products (product_id, product_name, product_category) values ('2', 'Jewels of Stringology', 'Book')
insert into Products (product_id, product_name, product_category) values ('3', 'HP', 'Laptop')
insert into Products (product_id, product_name, product_category) values ('4', 'Lenovo', 'Laptop')
insert into Products (product_id, product_name, product_category) values ('5', 'Leetcode Kit', 'T-shirt')
Truncate table Orders
insert into Orders (product_id, order_date, unit) values ('1', '2020-02-05', '60')
insert into Orders (product_id, order_date, unit) values ('1', '2020-02-10', '70')
insert into Orders (product_id, order_date, unit) values ('2', '2020-01-18', '30')
insert into Orders (product_id, order_date, unit) values ('2', '2020-02-11', '80')
insert into Orders (product_id, order_date, unit) values ('3', '2020-02-17', '2')
insert into Orders (product_id, order_date, unit) values ('3', '2020-02-24', '3')
insert into Orders (product_id, order_date, unit) values ('4', '2020-03-01', '20')
insert into Orders (product_id, order_date, unit) values ('4', '2020-03-04', '30')
insert into Orders (product_id, order_date, unit) values ('4', '2020-03-04', '60')
insert into Orders (product_id, order_date, unit) values ('5', '2020-02-25', '50')
insert into Orders (product_id, order_date, unit) values ('5', '2020-02-27', '50')
insert into Orders (product_id, order_date, unit) values ('5', '2020-03-01', '50')


/* 1378. Replace Employee ID With The Unique Identifier
Table: Employees

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+
id is the primary key for this table.
Each row of this table contains the id and the name of an employee in a company.
 

Table: EmployeeUNI

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| unique_id     | int     |
+---------------+---------+
(id, unique_id) is the primary key for this table.
Each row of this table contains the id and the corresponding unique id of an employee in the company.
 

Write an SQL query to show the unique ID of each user, If a user doesn't have a unique ID replace just show null.

Return the result table in any order.

The query result format is in the following example:

Employees table:
+----+----------+
| id | name     |
+----+----------+
| 1  | Alice    |
| 7  | Bob      |
| 11 | Meir     |
| 90 | Winston  |
| 3  | Jonathan |
+----+----------+

EmployeeUNI table:
+----+-----------+
| id | unique_id |
+----+-----------+
| 3  | 1         |
| 11 | 2         |
| 90 | 3         |
+----+-----------+

Result table:
+-----------+----------+
| unique_id | name     |
+-----------+----------+
| null      | Alice    |
| null      | Bob      |
| 2         | Meir     |
| 3         | Winston  |
| 1         | Jonathan |
+-----------+----------+

Alice and Bob don't have a unique ID, We will show null instead.
The unique ID of Meir is 2.
The unique ID of Winston is 3.
The unique ID of Jonathan is 1.
*/
Create table If Not Exists Employees (id int, name varchar(20))
Create table If Not Exists EmployeeUNI (id int, unique_id int)
Truncate table Employees
insert into Employees (id, name) values ('1', 'Alice')
insert into Employees (id, name) values ('7', 'Bob')
insert into Employees (id, name) values ('11', 'Meir')
insert into Employees (id, name) values ('90', 'Winston')
insert into Employees (id, name) values ('3', 'Jonathan')
Truncate table EmployeeUNI
insert into EmployeeUNI (id, unique_id) values ('3', '1')
insert into EmployeeUNI (id, unique_id) values ('11', '2')
insert into EmployeeUNI (id, unique_id) values ('90', '3')

/*#1407. Top Travellers 
Table: Users

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| name          | varchar |
+---------------+---------+
id is the primary key for this table.
name is the name of the user.
 

Table: Rides

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| user_id       | int     |
| distance      | int     |
+---------------+---------+
id is the primary key for this table.
user_id is the id of the user who travelled the distance "distance".
 

Write an SQL query to report the distance travelled by each user.

Return the result table ordered by travelled_distance in descending order, if two or more users travelled the same distance, order them by their name in ascending order.

The query result format is in the following example.

 

Users table:
+------+-----------+
| id   | name      |
+------+-----------+
| 1    | Alice     |
| 2    | Bob       |
| 3    | Alex      |
| 4    | Donald    |
| 7    | Lee       |
| 13   | Jonathan  |
| 19   | Elvis     |
+------+-----------+

Rides table:
+------+----------+----------+
| id   | user_id  | distance |
+------+----------+----------+
| 1    | 1        | 120      |
| 2    | 2        | 317      |
| 3    | 3        | 222      |
| 4    | 7        | 100      |
| 5    | 13       | 312      |
| 6    | 19       | 50       |
| 7    | 7        | 120      |
| 8    | 19       | 400      |
| 9    | 7        | 230      |
+------+----------+----------+

Result table:
+----------+--------------------+
| name     | travelled_distance |
+----------+--------------------+
| Elvis    | 450                |
| Lee      | 450                |
| Bob      | 317                |
| Jonathan | 312                |
| Alex     | 222                |
| Alice    | 120                |
| Donald   | 0                  |
+----------+--------------------+
Elvis and Lee travelled 450 miles, Elvis is the top traveller as his name is alphabetically smaller than Lee.
Bob, Jonathan, Alex and Alice have only one ride and we just order them by the total distances of the ride.
Donald didn't have any rides, the distance travelled by him is 0.
*/

Create Table If Not Exists Users (id int, name varchar(30))
Create Table If Not Exists Rides (id int, user_id int, distance int)
Truncate table Users
insert into Users (id, name) values ('1', 'Alice')
insert into Users (id, name) values ('2', 'Bob')
insert into Users (id, name) values ('3', 'Alex')
insert into Users (id, name) values ('4', 'Donald')
insert into Users (id, name) values ('7', 'Lee')
insert into Users (id, name) values ('13', 'Jonathan')
insert into Users (id, name) values ('19', 'Elvis')
Truncate table Rides
insert into Rides (id, user_id, distance) values ('1', '1', '120')
insert into Rides (id, user_id, distance) values ('2', '2', '317')
insert into Rides (id, user_id, distance) values ('3', '3', '222')
insert into Rides (id, user_id, distance) values ('4', '7', '100')
insert into Rides (id, user_id, distance) values ('5', '13', '312')
insert into Rides (id, user_id, distance) values ('6', '19', '50')
insert into Rides (id, user_id, distance) values ('7', '7', '120')
insert into Rides (id, user_id, distance) values ('8', '19', '400')
insert into Rides (id, user_id, distance) values ('9', '7', '230')

/* 1511. Customer Order Frequency
Table: Customers

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| customer_id   | int     |
| name          | varchar |
| country       | varchar |
+---------------+---------+
customer_id is the primary key for this table.
This table contains information of the customers in the company.
 

Table: Product

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| product_id    | int     |
| description   | varchar |
| price         | int     |
+---------------+---------+
product_id is the primary key for this table.
This table contains information of the products in the company.
price is the product cost.
 

Table: Orders

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| order_id      | int     |
| customer_id   | int     |
| product_id    | int     |
| order_date    | date    |
| quantity      | int     |
+---------------+---------+
order_id is the primary key for this table.
This table contains information on customer orders.
customer_id is the id of the customer who bought "quantity" products with id "product_id".
Order_date is the date in format ('YYYY-MM-DD') when the order was shipped.
 

Write an SQL query to report the customer_id and customer_name of customers who have spent at least $100 in each month of June and July 2020.

Return the result table in any order.

The query result format is in the following example.

 

Customers
+--------------+-----------+-------------+
| customer_id  | name      | country     |
+--------------+-----------+-------------+
| 1            | Winston   | USA         |
| 2            | Jonathan  | Peru        |
| 3            | Moustafa  | Egypt       |
+--------------+-----------+-------------+

Product
+--------------+-------------+-------------+
| product_id   | description | price       |
+--------------+-------------+-------------+
| 10           | LC Phone    | 300         |
| 20           | LC T-Shirt  | 10          |
| 30           | LC Book     | 45          |
| 40           | LC Keychain | 2           |
+--------------+-------------+-------------+

Orders
+--------------+-------------+-------------+-------------+-----------+
| order_id     | customer_id | product_id  | order_date  | quantity  |
+--------------+-------------+-------------+-------------+-----------+
| 1            | 1           | 10          | 2020-06-10  | 1         |
| 2            | 1           | 20          | 2020-07-01  | 1         |
| 3            | 1           | 30          | 2020-07-08  | 2         |
| 4            | 2           | 10          | 2020-06-15  | 2         |
| 5            | 2           | 40          | 2020-07-01  | 10        |
| 6            | 3           | 20          | 2020-06-24  | 2         |
| 7            | 3           | 30          | 2020-06-25  | 2         |
| 9            | 3           | 30          | 2020-05-08  | 3         |
+--------------+-------------+-------------+-------------+-----------+

Result table:
+--------------+------------+
| customer_id  | name       |  
+--------------+------------+
| 1            | Winston    |
+--------------+------------+ 
Winston spent $300 (300 * 1) in June and $100 ( 10 * 1 + 45 * 2) in July 2020.
Jonathan spent $600 (300 * 2) in June and $20 ( 2 * 10) in July 2020.
Moustafa spent $110 (10 * 2 + 45 * 2) in June and $0 in July 2020.
*/
Create table If Not Exists Customers (customer_id int, name varchar(30), country varchar(30))
Create table If Not Exists Product (product_id int, description varchar(30), price int)
Create table If Not Exists Orders (order_id int, customer_id int, product_id int, order_date date, quantity int)
Truncate table Customers
insert into Customers (customer_id, name, country) values ('1', 'Winston', 'USA')
insert into Customers (customer_id, name, country) values ('2', 'Jonathan', 'Peru')
insert into Customers (customer_id, name, country) values ('3', 'Moustafa', 'Egypt')
Truncate table Product
insert into Product (product_id, description, price) values ('10', 'LC Phone', '300')
insert into Product (product_id, description, price) values ('20', 'LC T-Shirt', '10')
insert into Product (product_id, description, price) values ('30', 'LC Book', '45')
insert into Product (product_id, description, price) values ('40', 'LC Keychain', '2')
Truncate table Orders
insert into Orders (order_id, customer_id, product_id, order_date, quantity) values ('1', '1', '10', '2020-06-10', '1')
insert into Orders (order_id, customer_id, product_id, order_date, quantity) values ('2', '1', '20', '2020-07-01', '1')
insert into Orders (order_id, customer_id, product_id, order_date, quantity) values ('3', '1', '30', '2020-07-08', '2')
insert into Orders (order_id, customer_id, product_id, order_date, quantity) values ('4', '2', '10', '2020-06-15', '2')
insert into Orders (order_id, customer_id, product_id, order_date, quantity) values ('5', '2', '40', '2020-07-01', '10')
insert into Orders (order_id, customer_id, product_id, order_date, quantity) values ('6', '3', '20', '2020-06-24', '2')
insert into Orders (order_id, customer_id, product_id, order_date, quantity) values ('7', '3', '30', '2020-06-25', '2')
insert into Orders (order_id, customer_id, product_id, order_date, quantity) values ('9', '3', '30', '2020-05-08', '3')

/*175. Combine Two Tables */

Table: Person

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| PersonId    | int     |
| FirstName   | varchar |
| LastName    | varchar |
+-------------+---------+
PersonId is the primary key column for this table.
Table: Address

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| AddressId   | int     |
| PersonId    | int     |
| City        | varchar |
| State       | varchar |
+-------------+---------+
AddressId is the primary key column for this table.

Q: Write a SQL query for a report that provides the following information for each person in the Person table, regardless if there is an address for each of those people:

FirstName, LastName, City, State

Solution:
Create table Person (PersonId int, FirstName varchar(255), LastName varchar(255))
Create table Address (AddressId int, PersonId int, City varchar(255), State varchar(255))
Truncate table Person
insert into Person (PersonId, LastName, FirstName) values ('1', 'Wang', 'Allen')
Truncate table Address
insert into Address (AddressId, PersonId, City, State) values ('1', '2', 'New York City', 'New York')

/*181. Employees Earning More Than Their Managers*/
The Employee table holds all employees including their managers. Every employee has an Id, and there is also a column for the manager Id.

+----+-------+--------+-----------+
| Id | Name  | Salary | ManagerId |
+----+-------+--------+-----------+
| 1  | Joe   | 70000  | 3         |
| 2  | Henry | 80000  | 4         |
| 3  | Sam   | 60000  | NULL      |
| 4  | Max   | 90000  | NULL      |
+----+-------+--------+-----------+
Given the Employee table, write a SQL query that finds out employees who earn more than their managers. For the above table, Joe is the only employee who earns more than his manager.

+----------+
| Employee |
+----------+
| Joe      |
+----------+

Q: Write a SQL query that finds out employees who earn more than their managers. For the above table, Joe is the only employee who earns more than his manager.

Create table If Not Exists Employee (Id int, Name varchar(255), Salary int, ManagerId int)
Truncate table Employee
insert into Employee (Id, Name, Salary, ManagerId) values ('1', 'Joe', '70000', '3')
insert into Employee (Id, Name, Salary, ManagerId) values ('2', 'Henry', '80000', '4')
insert into Employee (Id, Name, Salary, ManagerId) values ('3', 'Sam', '60000', 'None')
insert into Employee (Id, Name, Salary, ManagerId) values ('4', 'Max', '90000', 'None')

/*#577. Employee Bonus 
Select all employee's name and bonus whose bonus is < 1000.

Table:Employee

+-------+--------+-----------+--------+
| empId |  name  | supervisor| salary |
+-------+--------+-----------+--------+
|   1   | John   |  3        | 1000   |
|   2   | Dan    |  3        | 2000   |
|   3   | Brad   |  null     | 4000   |
|   4   | Thomas |  3        | 4000   |
+-------+--------+-----------+--------+
empId is the primary key column for this table.
Table: Bonus

+-------+-------+
| empId | bonus |
+-------+-------+
| 2     | 500   |
| 4     | 2000  |
+-------+-------+
empId is the primary key column for this table.
Example ouput:

+-------+-------+
| name  | bonus |
+-------+-------+
| John  | null  |
| Dan   | 500   |
| Brad  | null  |
+-------+-------+
*/
Create table If Not Exists Employee (EmpId int, Name varchar(255), Supervisor int, Salary int)
Create table If Not Exists Bonus (EmpId int, Bonus int)
Truncate table Employee
insert into Employee (EmpId, Name, Supervisor, Salary) values ('3', 'Brad', 'None', '4000')
insert into Employee (EmpId, Name, Supervisor, Salary) values ('1', 'John', '3', '1000')
insert into Employee (EmpId, Name, Supervisor, Salary) values ('2', 'Dan', '3', '2000')
insert into Employee (EmpId, Name, Supervisor, Salary) values ('4', 'Thomas', '3', '4000')
Truncate table Bonus
insert into Bonus (EmpId, Bonus) values ('2', '500')
insert into Bonus (EmpId, Bonus) values ('4', '2000')

/*#607. Sales Person 
Description

Given three tables: salesperson, company, orders.
Output all the names in the table salesperson, who didn’t have sales to company 'RED'.

Example
Input

Table: salesperson

+----------+------+--------+-----------------+-----------+
| sales_id | name | salary | commission_rate | hire_date |
+----------+------+--------+-----------------+-----------+
|   1      | John | 100000 |     6           | 4/1/2006  |
|   2      | Amy  | 120000 |     5           | 5/1/2010  |
|   3      | Mark | 65000  |     12          | 12/25/2008|
|   4      | Pam  | 25000  |     25          | 1/1/2005  |
|   5      | Alex | 50000  |     10          | 2/3/2007  |
+----------+------+--------+-----------------+-----------+
The table salesperson holds the salesperson information. Every salesperson has a sales_id and a name.
Table: company

+---------+--------+------------+
| com_id  |  name  |    city    |
+---------+--------+------------+
|   1     |  RED   |   Boston   |
|   2     | ORANGE |   New York |
|   3     | YELLOW |   Boston   |
|   4     | GREEN  |   Austin   |
+---------+--------+------------+
The table company holds the company information. Every company has a com_id and a name.
Table: orders

+----------+------------+---------+----------+--------+
| order_id | order_date | com_id  | sales_id | amount |
+----------+------------+---------+----------+--------+
| 1        |   1/1/2014 |    3    |    4     | 100000 |
| 2        |   2/1/2014 |    4    |    5     | 5000   |
| 3        |   3/1/2014 |    1    |    1     | 50000  |
| 4        |   4/1/2014 |    1    |    4     | 25000  |
+----------+----------+---------+----------+--------+
The table orders holds the sales record information, salesperson and customer company are represented by sales_id and com_id.
output

+------+
| name | 
+------+
| Amy  | 
| Mark | 
| Alex |
+------+
Explanation

According to order '3' and '4' in table orders, it is easy to tell only salesperson 'John' and 'Pam' have sales to company 'RED',
so we need to output all the other names in the table salesperson.
*/
Create table If Not Exists salesperson (sales_id int, name varchar(255), salary int,commission_rate int, hire_date varchar(255))
Create table If Not Exists company (com_id int, name varchar(255), city varchar(255))
Create table If Not Exists orders (order_id int, order_date varchar(255), com_id int, sales_id int, amount int)
Truncate table salesperson
insert into salesperson (sales_id, name, salary, commission_rate, hire_date) values ('1', 'John', '100000', '6', '4/1/2006')
insert into salesperson (sales_id, name, salary, commission_rate, hire_date) values ('2', 'Amy', '12000', '5', '5/1/2010')
insert into salesperson (sales_id, name, salary, commission_rate, hire_date) values ('3', 'Mark', '65000', '12', '12/25/2008')
insert into salesperson (sales_id, name, salary, commission_rate, hire_date) values ('4', 'Pam', '25000', '25', '1/1/2005')
insert into salesperson (sales_id, name, salary, commission_rate, hire_date) values ('5', 'Alex', '5000', '10', '2/3/2007')
Truncate table company
insert into company (com_id, name, city) values ('1', 'RED', 'Boston')
insert into company (com_id, name, city) values ('2', 'ORANGE', 'New York')
insert into company (com_id, name, city) values ('3', 'YELLOW', 'Boston')
insert into company (com_id, name, city) values ('4', 'GREEN', 'Austin')
Truncate table orders
insert into orders (order_id, order_date, com_id, sales_id, amount) values ('1', '1/1/2014', '3', '4', '10000')
insert into orders (order_id, order_date, com_id, sales_id, amount) values ('2', '2/1/2014', '4', '5', '5000')
insert into orders (order_id, order_date, com_id, sales_id, amount) values ('3', '3/1/2014', '1', '1', '50000')
insert into orders (order_id, order_date, com_id, sales_id, amount) values ('4', '4/1/2014', '1', '4', '25000')

/*#1068. Product Sales Analysis I 
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
(sale_id, year) is the primary key of this table.
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
 

Write an SQL query that reports the product_name, year, and price for each sale_id in the Sales table.

Return the resulting table in any order.

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
+--------------+-------+-------+
| product_name | year  | price |
+--------------+-------+-------+
| Nokia        | 2008  | 5000  |
| Nokia        | 2009  | 5000  |
| Apple        | 2011  | 9000  |
+--------------+-------+-------+
From sale_id = 1, we can conclude that Nokia was sold for 5000 in the year 2008.
From sale_id = 2, we can conclude that Nokia was sold for 5000 in the year 2009.
From sale_id = 7, we can conclude that Apple was sold for 9000 in the year 2011.
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

week 6
/* 1607. Sellers With No Sales
Table: Customer

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| customer_id   | int     |
| customer_name | varchar |
+---------------+---------+
customer_id is the primary key for this table.
Each row of this table contains the information of each customer in the WebStore.
 

Table: Orders

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| order_id      | int     |
| sale_date     | date    |
| order_cost    | int     |
| customer_id   | int     |
| seller_id     | int     |
+---------------+---------+
order_id is the primary key for this table.
Each row of this table contains all orders made in the webstore.
sale_date is the date when the transaction was made between the customer (customer_id) and the seller (seller_id).
 

Table: Seller

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| seller_id     | int     |
| seller_name   | varchar |
+---------------+---------+
seller_id is the primary key for this table.
Each row of this table contains the information of each seller.
 

Write an SQL query to report the names of all sellers who did not make any sales in 2020.

Return the result table ordered by seller_name in ascending order.

The query result format is in the following example.

Customer table:
+--------------+---------------+
| customer_id  | customer_name |
+--------------+---------------+
| 101          | Alice         |
| 102          | Bob           |
| 103          | Charlie       |
+--------------+---------------+

Orders table:
+-------------+------------+--------------+-------------+-------------+
| order_id    | sale_date  | order_cost   | customer_id | seller_id   |
+-------------+------------+--------------+-------------+-------------+
| 1           | 2020-03-01 | 1500         | 101         | 1           |
| 2           | 2020-05-25 | 2400         | 102         | 2           |
| 3           | 2019-05-25 | 800          | 101         | 3           |
| 4           | 2020-09-13 | 1000         | 103         | 2           |
| 5           | 2019-02-11 | 700          | 101         | 2           |
+-------------+------------+--------------+-------------+-------------+

Seller table:
+-------------+-------------+
| seller_id   | seller_name |
+-------------+-------------+
| 1           | Daniel      |
| 2           | Elizabeth   |
| 3           | Frank       |
+-------------+-------------+

Result table:
+-------------+
| seller_name |
+-------------+
| Frank       |
+-------------+
Daniel made 1 sale in March 2020.
Elizabeth made 2 sales in 2020 and 1 sale in 2019.
Frank made 1 sale in 2019 but no sales in 2020.
*/
Create table If Not Exists Customer (customer_id int, customer_name varchar(20))
Create table If Not Exists Orders (order_id int, sale_date date, order_cost int, customer_id int, seller_id int)
Create table If Not Exists Seller (seller_id int, seller_name varchar(20))
Truncate table Customer
insert into Customer (customer_id, customer_name) values ('101', 'Alice')
insert into Customer (customer_id, customer_name) values ('102', 'Bob')
insert into Customer (customer_id, customer_name) values ('103', 'Charlie')
Truncate table Orders
insert into Orders (order_id, sale_date, order_cost, customer_id, seller_id) values ('1', '2020-03-01', '1500', '101', '1')
insert into Orders (order_id, sale_date, order_cost, customer_id, seller_id) values ('2', '2020-05-25', '2400', '102', '2')
insert into Orders (order_id, sale_date, order_cost, customer_id, seller_id) values ('3', '2019-05-25', '800', '101', '3')
insert into Orders (order_id, sale_date, order_cost, customer_id, seller_id) values ('4', '2020-09-13', '1000', '103', '2')
insert into Orders (order_id, sale_date, order_cost, customer_id, seller_id) values ('5', '2019-02-11', '700', '101', '2')
Truncate table Seller
insert into Seller (seller_id, seller_name) values ('1', 'Daniel')
insert into Seller (seller_id, seller_name) values ('2', 'Elizabeth')
insert into Seller (seller_id, seller_name) values ('3', 'Frank')

/*197. Rising Temperature 
Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| recordDate    | date    |
| temperature   | int     |
+---------------+---------+
id is the primary key for this table.
This table contains information about the temperature in a certain day.
 

Write an SQL query to find all dates' id with higher temperature compared to its previous dates (yesterday).

Return the result table in any order.

The query result format is in the following example:

Weather
+----+------------+-------------+
| id | recordDate | Temperature |
+----+------------+-------------+
| 1  | 2015-01-01 | 10          |
| 2  | 2015-01-02 | 25          |
| 3  | 2015-01-03 | 20          |
| 4  | 2015-01-04 | 30          |
+----+------------+-------------+

Result table:
+----+
| id |
+----+
| 2  |
| 4  |
+----+
In 2015-01-02, temperature was higher than the previous day (10 -> 25).
In 2015-01-04, temperature was higher than the previous day (20 -> 30).
*/
Create table If Not Exists Weather (Id int, RecordDate date, Temperature int)
Truncate table Weather
insert into Weather (Id, RecordDate, Temperature) values ('1', '2015-01-01', '10')
insert into Weather (Id, RecordDate, Temperature) values ('2', '2015-01-02', '25')
insert into Weather (Id, RecordDate, Temperature) values ('3', '2015-01-03', '20')
insert into Weather (Id, RecordDate, Temperature) values ('4', '2015-01-04', '30')

	
/*#613. Shortest Distance in a Line 
Table point holds the x coordinate of some points on x-axis in a plane, which are all integers.
 

Write a query to find the shortest distance between two points in these points.
 

| x   |
|-----|
| -1  |
| 0   |
| 2   |
 

The shortest distance is '1' obviously, which is from point '-1' to '0'. So the output is as below:
 

| shortest|
|---------|
| 1       |
*/
CREATE TABLE If Not Exists point (x INT NOT NULL, UNIQUE INDEX x_UNIQUE (x ASC))
Truncate table point
insert into point (x) values ('-1')
insert into point (x) values ('0')
insert into point (x) values ('2')

/* 1294. Weather Type in Each Country
Table: Countries

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| country_id    | int     |
| country_name  | varchar |
+---------------+---------+
country_id is the primary key for this table.
Each row of this table contains the ID and the name of one country.
 

Table: Weather

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| country_id    | int     |
| weather_state | varchar |
| day           | date    |
+---------------+---------+
(country_id, day) is the primary key for this table.
Each row of this table indicates the weather state in a country for one day.
 

Write an SQL query to find the type of weather in each country for November 2019.

The type of weather is Cold if the average weather_state is less than or equal 15, Hot if the average weather_state is greater than or equal 25 and Warm otherwise.

Return result table in any order.

The query result format is in the following example:

Countries table:
+------------+--------------+
| country_id | country_name |
+------------+--------------+
| 2          | USA          |
| 3          | Australia    |
| 7          | Peru         |
| 5          | China        |
| 8          | Morocco      |
| 9          | Spain        |
+------------+--------------+
Weather table:
+------------+---------------+------------+
| country_id | weather_state | day        |
+------------+---------------+------------+
| 2          | 15            | 2019-11-01 |
| 2          | 12            | 2019-10-28 |
| 2          | 12            | 2019-10-27 |
| 3          | -2            | 2019-11-10 |
| 3          | 0             | 2019-11-11 |
| 3          | 3             | 2019-11-12 |
| 5          | 16            | 2019-11-07 |
| 5          | 18            | 2019-11-09 |
| 5          | 21            | 2019-11-23 |
| 7          | 25            | 2019-11-28 |
| 7          | 22            | 2019-12-01 |
| 7          | 20            | 2019-12-02 |
| 8          | 25            | 2019-11-05 |
| 8          | 27            | 2019-11-15 |
| 8          | 31            | 2019-11-25 |
| 9          | 7             | 2019-10-23 |
| 9          | 3             | 2019-12-23 |
+------------+---------------+------------+
Result table:
+--------------+--------------+
| country_name | weather_type |
+--------------+--------------+
| USA          | Cold         |
| Austraila    | Cold         |
| Peru         | Hot          |
| China        | Warm         |
| Morocco      | Hot          |
+--------------+--------------+
Average weather_state in USA in November is (15) / 1 = 15 so weather type is Cold.
Average weather_state in Austraila in November is (-2 + 0 + 3) / 3 = 0.333 so weather type is Cold.
Average weather_state in Peru in November is (25) / 1 = 25 so weather type is Hot.
Average weather_state in China in November is (16 + 18 + 21) / 3 = 18.333 so weather type is Warm.
Average weather_state in Morocco in November is (25 + 27 + 31) / 3 = 27.667 so weather type is Hot.
We know nothing about average weather_state in Spain in November so we don't include it in the result table. 
*/
Create table If Not Exists Countries (country_id int, country_name varchar(20))
Create table If Not Exists Weather (country_id int, weather_state int, day date)
Truncate table Countries
insert into Countries (country_id, country_name) values ('2', 'USA')
insert into Countries (country_id, country_name) values ('3', 'Australia')
insert into Countries (country_id, country_name) values ('7', 'Peru')
insert into Countries (country_id, country_name) values ('5', 'China')
insert into Countries (country_id, country_name) values ('8', 'Morocco')
insert into Countries (country_id, country_name) values ('9', 'Spain')
Truncate table Weather
insert into Weather (country_id, weather_state, day) values ('2', '15', '2019-11-01')
insert into Weather (country_id, weather_state, day) values ('2', '12', '2019-10-28')
insert into Weather (country_id, weather_state, day) values ('2', '12', '2019-10-27')
insert into Weather (country_id, weather_state, day) values ('3', '-2', '2019-11-10')
insert into Weather (country_id, weather_state, day) values ('3', '0', '2019-11-11')
insert into Weather (country_id, weather_state, day) values ('3', '3', '2019-11-12')
insert into Weather (country_id, weather_state, day) values ('5', '16', '2019-11-07')
insert into Weather (country_id, weather_state, day) values ('5', '18', '2019-11-09')
insert into Weather (country_id, weather_state, day) values ('5', '21', '2019-11-23')
insert into Weather (country_id, weather_state, day) values ('7', '25', '2019-11-28')
insert into Weather (country_id, weather_state, day) values ('7', '22', '2019-12-01')
insert into Weather (country_id, weather_state, day) values ('7', '20', '2019-12-02')
insert into Weather (country_id, weather_state, day) values ('8', '25', '2019-11-05')
insert into Weather (country_id, weather_state, day) values ('8', '27', '2019-11-15')
insert into Weather (country_id, weather_state, day) values ('8', '31', '2019-11-25')
insert into Weather (country_id, weather_state, day) values ('9', '7', '2019-10-23')
insert into Weather (country_id, weather_state, day) values ('9', '3', '2019-12-23')

/* 1495. Friendly Movies Streamed Last Month
Table: TVProgram

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| program_date  | date    |
| content_id    | int     |
| channel       | varchar |
+---------------+---------+
(program_date, content_id) is the primary key for this table.
This table contains information of the programs on the TV.
content_id is the id of the program in some channel on the TV.
 

Table: Content

+------------------+---------+
| Column Name      | Type    |
+------------------+---------+
| content_id       | varchar |
| title            | varchar |
| Kids_content     | enum    |
| content_type     | varchar |
+------------------+---------+
content_id is the primary key for this table.
Kids_content is an enum that takes one of the values ('Y', 'N') where: 
'Y' means is content for kids otherwise 'N' is not content for kids.
content_type is the category of the content as movies, series, etc.
 

Write an SQL query to report the distinct titles of the kid-friendly movies streamed in June 2020.

Return the result table in any order.

The query result format is in the following example.

 

TVProgram table:
+--------------------+--------------+-------------+
| program_date       | content_id   | channel     |
+--------------------+--------------+-------------+
| 2020-06-10 08:00   | 1            | LC-Channel  |
| 2020-05-11 12:00   | 2            | LC-Channel  |
| 2020-05-12 12:00   | 3            | LC-Channel  |
| 2020-05-13 14:00   | 4            | Disney Ch   |
| 2020-06-18 14:00   | 4            | Disney Ch   |
| 2020-07-15 16:00   | 5            | Disney Ch   |
+--------------------+--------------+-------------+

Content table:
+------------+----------------+---------------+---------------+
| content_id | title          | Kids_content  | content_type  |
+------------+----------------+---------------+---------------+
| 1          | Leetcode Movie | N             | Movies        |
| 2          | Alg. for Kids  | Y             | Series        |
| 3          | Database Sols  | N             | Series        |
| 4          | Aladdin        | Y             | Movies        |
| 5          | Cinderella     | Y             | Movies        |
+------------+----------------+---------------+---------------+

Result table:
+--------------+
| title        |
+--------------+
| Aladdin      |
+--------------+
"Leetcode Movie" is not a content for kids.
"Alg. for Kids" is not a movie.
"Database Sols" is not a movie
"Alladin" is a movie, content for kids and was streamed in June 2020.
"Cinderella" was not streamed in June 2020.
*/

Create table If Not Exists TVProgram (program_date date, content_id int, channel varchar(30))
Create table If Not Exists Content (content_id varchar(30), title varchar(30), Kids_content ENUM('Y', 'N'), content_type varchar(30))
Truncate table TVProgram
insert into TVProgram (program_date, content_id, channel) values ('2020-06-10 08:00', '1', 'LC-Channel')
insert into TVProgram (program_date, content_id, channel) values ('2020-05-11 12:00', '2', 'LC-Channel')
insert into TVProgram (program_date, content_id, channel) values ('2020-05-12 12:00', '3', 'LC-Channel')
insert into TVProgram (program_date, content_id, channel) values ('2020-05-13 14:00', '4', 'Disney Ch')
insert into TVProgram (program_date, content_id, channel) values ('2020-06-18 14:00', '4', 'Disney Ch')
insert into TVProgram (program_date, content_id, channel) values ('2020-07-15 16:00', '5', 'Disney Ch')
Truncate table Content
insert into Content (content_id, title, Kids_content, content_type) values ('1', 'Leetcode Movie', 'N', 'Movies')
insert into Content (content_id, title, Kids_content, content_type) values ('2', 'Alg. for Kids', 'Y', 'Series')
insert into Content (content_id, title, Kids_content, content_type) values ('3', 'Database Sols', 'N', 'Series')
insert into Content (content_id, title, Kids_content, content_type) values ('4', 'Aladdin', 'Y', 'Movies')
insert into Content (content_id, title, Kids_content, content_type) values ('5', 'Cinderella', 'Y', 'Movies')

	
/* 1435. Create a Session Bar Chart
Table: Sessions

+---------------------+---------+
| Column Name         | Type    |
+---------------------+---------+
| session_id          | int     |
| duration            | int     |
+---------------------+---------+
session_id is the primary key for this table.
duration is the time in seconds that a user has visited the application.
 

You want to know how long a user visits your application. You decided to create bins of "[0-5>", "[5-10>", "[10-15>" and "15 minutes or more" and count the number of sessions on it.

Write an SQL query to report the (bin, total) in any order.

The query result format is in the following example.

Sessions table:
+-------------+---------------+
| session_id  | duration      |
+-------------+---------------+
| 1           | 30            |
| 2           | 199           |
| 3           | 299           |
| 4           | 580           |
| 5           | 1000          |
+-------------+---------------+

Result table:
+--------------+--------------+
| bin          | total        |
+--------------+--------------+
| [0-5>        | 3            |
| [5-10>       | 1            |
| [10-15>      | 0            |
| 15 or more   | 1            |
+--------------+--------------+

For session_id 1, 2 and 3 have a duration greater or equal than 0 minutes and less than 5 minutes.
For session_id 4 has a duration greater or equal than 5 minutes and less than 10 minutes.
There are no session with a duration greater or equial than 10 minutes and less than 15 minutes.
For session_id 5 has a duration greater or equal than 15 minutes.
*/
Create table If Not Exists Sessions (session_id int, duration int)
Truncate table Sessions
insert into Sessions (session_id, duration) values ('1', '30')
insert into Sessions (session_id, duration) values ('2', '199')
insert into Sessions (session_id, duration) values ('3', '299')
insert into Sessions (session_id, duration) values ('4', '580')
insert into Sessions (session_id, duration) values ('5', '1000')

/*
1421. NPV Queries

Table: NPV

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| year          | int     |
| npv           | int     |
+---------------+---------+
(id, year) is the primary key of this table.
The table has information about the id and the year of each inventory and the corresponding net present value.
 

Table: Queries

+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| id            | int     |
| year          | int     |
+---------------+---------+
(id, year) is the primary key of this table.
The table has information about the id and the year of each inventory query.
 

Write an SQL query to find the npv of all each query of queries table.

Return the result table in any order.

The query result format is in the following example:

NPV table:
+------+--------+--------+
| id   | year   | npv    |
+------+--------+--------+
| 1    | 2018   | 100    |
| 7    | 2020   | 30     |
| 13   | 2019   | 40     |
| 1    | 2019   | 113    |
| 2    | 2008   | 121    |
| 3    | 2009   | 12     |
| 11   | 2020   | 99     |
| 7    | 2019   | 0      |
+------+--------+--------+

Queries table:
+------+--------+
| id   | year   |
+------+--------+
| 1    | 2019   |
| 2    | 2008   |
| 3    | 2009   |
| 7    | 2018   |
| 7    | 2019   |
| 7    | 2020   |
| 13   | 2019   |
+------+--------+

Result table:
+------+--------+--------+
| id   | year   | npv    |
+------+--------+--------+
| 1    | 2019   | 113    |
| 2    | 2008   | 121    |
| 3    | 2009   | 12     |
| 7    | 2018   | 0      |
| 7    | 2019   | 0      |
| 7    | 2020   | 30     |
| 13   | 2019   | 40     |
+------+--------+--------+

The npv value of (7, 2018) is not present in the NPV table, we consider it 0.
The npv values of all other queries can be found in the NPV table.
*/

Create Table If Not Exists NPV (id int, year int, npv int)
Create Table If Not Exists Queries (id int, year int)
Truncate table NPV
insert into NPV (id, year, npv) values ('1', '2018', '100')
insert into NPV (id, year, npv) values ('7', '2020', '30')
insert into NPV (id, year, npv) values ('13', '2019', '40')
insert into NPV (id, year, npv) values ('1', '2019', '113')
insert into NPV (id, year, npv) values ('2', '2008', '121')
insert into NPV (id, year, npv) values ('3', '2009', '21')
insert into NPV (id, year, npv) values ('11', '2020', '99')
insert into NPV (id, year, npv) values ('7', '2019', '0')
Truncate table Queries
insert into Queries (id, year) values ('1', '2019')
insert into Queries (id, year) values ('2', '2008')
insert into Queries (id, year) values ('3', '2009')
insert into Queries (id, year) values ('7', '2018')
insert into Queries (id, year) values ('7', '2019')
insert into Queries (id, year) values ('7', '2020')
insert into Queries (id, year) values ('13', '2019')

/*
1715	Count Apples And Oranges

Table: Boxes

+--------------+------+
| Column Name  | Type |
+--------------+------+
| box_id       | int  |
| chest_id     | int  |
| apple_count  | int  |
| orange_count | int  |
+--------------+------+
box_id is the primary key for this table.
chest_id is a foreign key of the chests table.
This table contains information about the boxes and the number of oranges and apples they contain. Each box may contain a chest, which also can contain oranges and apples.
 

Table: Chests

+--------------+------+
| Column Name  | Type |
+--------------+------+
| chest_id     | int  |
| apple_count  | int  |
| orange_count | int  |
+--------------+------+
chest_id is the primary key for this table.
This table contains information about the chests we have, and the corresponding number if oranges and apples they contain.
 

Write an SQL query to count the number of apples and oranges in all the boxes. If a box contains a chest, you should also include the number of apples and oranges it has.

Return the result table in any order.

The query result format is in the following example:

 

Boxes table:
+--------+----------+-------------+--------------+
| box_id | chest_id | apple_count | orange_count |
+--------+----------+-------------+--------------+
| 2      | null     | 6           | 15           |
| 18     | 14       | 4           | 15           |
| 19     | 3        | 8           | 4            |
| 12     | 2        | 19          | 20           |
| 20     | 6        | 12          | 9            |
| 8      | 6        | 9           | 9            |
| 3      | 14       | 16          | 7            |
+--------+----------+-------------+--------------+

Chests table:
+----------+-------------+--------------+
| chest_id | apple_count | orange_count |
+----------+-------------+--------------+
| 6        | 5           | 6            |
| 14       | 20          | 10           |
| 2        | 8           | 8            |
| 3        | 19          | 4            |
| 16       | 19          | 19           |
+----------+-------------+--------------+

Result table:
+-------------+--------------+
| apple_count | orange_count |
+-------------+--------------+
| 151         | 123          |
+-------------+--------------+
box 2 has 6 apples and 15 oranges.
box 18 has 4 + 20 (from the chest) = 24 apples and 15 + 10 (from the chest) = 25 oranges.
box 19 has 8 + 19 (from the chest) = 27 apples and 4 + 4 (from the chest) = 8 oranges.
box 12 has 19 + 8 (from the chest) = 27 apples and 20 + 8 (from the chest) = 28 oranges.
box 20 has 12 + 5 (from the chest) = 17 apples and 9 + 6 (from the chest) = 15 oranges.
box 8 has 9 + 5 (from the chest) = 14 apples and 9 + 6 (from the chest) = 15 oranges.
box 3 has 16 + 20 (from the chest) = 36 apples and 7 + 10 (from the chest) = 17 oranges.
Total number of apples = 6 + 24 + 27 + 27 + 17 + 14 + 36 = 151
Total number of oranges = 15 + 25 + 8 + 28 + 15 + 15 + 17 = 123
*/

Create table If Not Exists Boxes (box_id int, chest_id int, apple_count int, orange_count int)
Create table If Not Exists Chests (chest_id int, apple_count int, orange_count int)
Truncate table Boxes
insert into Boxes (box_id, chest_id, apple_count, orange_count) values ('2', 'None', '6', '15')
insert into Boxes (box_id, chest_id, apple_count, orange_count) values ('18', '14', '4', '15')
insert into Boxes (box_id, chest_id, apple_count, orange_count) values ('19', '3', '8', '4')
insert into Boxes (box_id, chest_id, apple_count, orange_count) values ('12', '2', '19', '20')
insert into Boxes (box_id, chest_id, apple_count, orange_count) values ('20', '6', '12', '9')
insert into Boxes (box_id, chest_id, apple_count, orange_count) values ('8', '6', '9', '9')
insert into Boxes (box_id, chest_id, apple_count, orange_count) values ('3', '14', '16', '7')
Truncate table Chests
insert into Chests (chest_id, apple_count, orange_count) values ('6', '5', '6')
insert into Chests (chest_id, apple_count, orange_count) values ('14', '20', '10')
insert into Chests (chest_id, apple_count, orange_count) values ('2', '8', '8')
insert into Chests (chest_id, apple_count, orange_count) values ('3', '19', '4')
insert into Chests (chest_id, apple_count, orange_count) values ('16', '19', '19')


	