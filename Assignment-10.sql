Create table If Not Exists Delivery (delivery_id int, customer_id int, order_date date, customer_pref_delivery_date date);
Truncate table Delivery;
insert into Delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('1', '1', '2019-08-01', '2019-08-02');
insert into Delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('2', '2', '2019-08-02', '2019-08-02');
insert into Delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('3', '1', '2019-08-11', '2019-08-12');
insert into Delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('4', '3', '2019-08-24', '2019-08-24');
insert into Delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('5', '3', '2019-08-21', '2019-08-22');
insert into Delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('6', '2', '2019-08-11', '2019-08-13');
insert into Delivery (delivery_id, customer_id, order_date, customer_pref_delivery_date) values ('7', '4', '2019-08-09', '2019-08-09');

SELECT ROUND(
    100.0 * SUM(
        CASE 
            WHEN order_date = customer_pref_delivery_date THEN 1
            ELSE 0
        END
    ) / COUNT(*), 2
) AS immediate_percentage
FROM (
    SELECT customer_id, order_date, customer_pref_delivery_date
    FROM Delivery
    WHERE (customer_id, order_date) IN (
        SELECT customer_id, MIN(order_date)
        FROM Delivery
        GROUP BY customer_id
    )
) AS FirstOrders







CREATE TABLE IF NOT EXISTS Product (product_id INT, new_price INT, change_date DATE);
TRUNCATE TABLE Product;
INSERT INTO Product (product_id, new_price, change_date) VALUES ('1', '20', '2019-08-14');
INSERT INTO Product (product_id, new_price, change_date) VALUES ('2', '50', '2019-08-14');
INSERT INTO Product (product_id, new_price, change_date) VALUES ('1', '30', '2019-08-15');
INSERT INTO Product (product_id, new_price, change_date) VALUES ('1', '35', '2019-08-16');
INSERT INTO Product (product_id, new_price, change_date) VALUES ('2', '65', '2019-08-17');
INSERT INTO Product (product_id, new_price, change_date) VALUES ('3', '20', '2019-08-18');

SELECT product_id,
       COALESCE(
         (SELECT new_price
          FROM Product
          WHERE product_id = p.product_id AND change_date <= '2019-08-16'
          ORDER BY change_date DESC
          LIMIT 1),
         10) AS price
FROM
  (SELECT DISTINCT product_id
   FROM Product) p;

