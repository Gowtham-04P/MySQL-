
Create table If Not Exists DailySales(date_id date, make_name varchar(20), lead_id int, partner_id int);
Truncate table DailySales;
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '0', '1');
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '1', '0');
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'toyota', '1', '2');
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'toyota', '0', '2');
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'toyota', '0', '1');
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'honda', '1', '2');
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-8', 'honda', '2', '1');
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '0', '1');
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '1', '2');
insert into DailySales (date_id, make_name, lead_id, partner_id) values ('2020-12-7', 'honda', '2', '1');

select date_id, make_name, 
    count(distinct lead_id) as unique_leads, 
    count(distinct partner_id) as unique_partners
from DailySales
group by date_id, make_name

Create table If Not Exists Employees(emp_id int, event_day date, in_time int, out_time int);
Truncate table Employees;
insert into Employees (emp_id, event_day, in_time, out_time) values ('1', '2020-11-28', '4', '32');
insert into Employees (emp_id, event_day, in_time, out_time) values ('1', '2020-11-28', '55', '200');
insert into Employees (emp_id, event_day, in_time, out_time) values ('1', '2020-12-3', '1', '42');
insert into Employees (emp_id, event_day, in_time, out_time) values ('2', '2020-11-28', '3', '33');
insert into Employees (emp_id, event_day, in_time, out_time) values ('2', '2020-12-9', '47', '74');

select event_day as day, emp_id, sum(out_time - in_time) as total_time
from Employees
group by day, emp_id

Create table If Not Exists Activity (user_id int, session_id int, activity_date date, activity_type ENUM('open_session', 'end_session', 'scroll_down', 'send_message'));
Truncate table Activity;
insert into Activity (user_id, session_id, activity_date, activity_type) values ('1', '1', '2019-07-20', 'open_session');
insert into Activity (user_id, session_id, activity_date, activity_type) values ('1', '1', '2019-07-20', 'scroll_down');
insert into Activity (user_id, session_id, activity_date, activity_type) values ('1', '1', '2019-07-20', 'end_session');
insert into Activity (user_id, session_id, activity_date, activity_type) values ('2', '4', '2019-07-20', 'open_session');
insert into Activity (user_id, session_id, activity_date, activity_type) values ('2', '4', '2019-07-21', 'send_message');
insert into Activity (user_id, session_id, activity_date, activity_type) values ('2', '4', '2019-07-21', 'end_session');
insert into Activity (user_id, session_id, activity_date, activity_type) values ('3', '2', '2019-07-21', 'open_session');
insert into Activity (user_id, session_id, activity_date, activity_type) values ('3', '2', '2019-07-21', 'send_message');
insert into Activity (user_id, session_id, activity_date, activity_type) values ('3', '2', '2019-07-21', 'end_session');
insert into Activity (user_id, session_id, activity_date, activity_type) values ('4', '3', '2019-06-25', 'open_session');
insert into Activity (user_id, session_id, activity_date, activity_type) values ('4', '3', '2019-06-25', 'end_session');

select activity_date as day, count(distinct user_id) as active_users 
from Activity
where activity_date between date_add('2019-07-27', interval -29 day) and '2019-07-27'
group by  activity_date
