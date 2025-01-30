Create table If Not Exists Sales (sale_id int, product_name varchar(30), sale_date date);
Truncate table Sales;
insert into Sales (sale_id, product_name, sale_date) values ('1', 'LCPHONE', '2000-01-16');
insert into Sales (sale_id, product_name, sale_date) values ('2', 'LCPhone', '2000-01-17');
insert into Sales (sale_id, product_name, sale_date) values ('3', 'LcPhOnE', '2000-02-18');
insert into Sales (sale_id, product_name, sale_date) values ('4', 'LCKeyCHAiN', '2000-02-19');
insert into Sales (sale_id, product_name, sale_date) values ('5', 'LCKeyChain', '2000-02-28');
insert into Sales (sale_id, product_name, sale_date) values ('6', 'Matryoshka', '2000-03-31');

select * from Sales;

select lower(product_name) as product_name,
	DATE_FORMAT(sale_date,'%Y-%m') as sale_date,
    count(*) as total
from Sales
group by product_name, date_format(sale_date,'%Y-%m')
order by product_name, sale_date;

Create table If Not Exists Ac (machine_id int, process_id int, activity_type ENUM('start', 'end'), timestamp float);
Truncate table Ac;
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('0', '0', 'start', '0.712');
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('0', '0', 'end', '1.52');
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('0', '1', 'start', '3.14');
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('0', '1', 'end', '4.12');
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('1', '0', 'start', '0.55');
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('1', '0', 'end', '1.55');
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('1', '1', 'start', '0.43');
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('1', '1', 'end', '1.42');
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('2', '0', 'start', '4.1');
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('2', '0', 'end', '4.512');
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('2', '1', 'start', '2.5');
insert into Ac (machine_id, process_id, activity_type, timestamp) values ('2', '1', 'end', '5');

select * from Ac;

select machine_id,
round(sum(case when activity_type = 'end' then timestamp END) - 
sum(case when activity_type = 'start' then timestamp END),3) as processing_time
from AC
group by machine_id;