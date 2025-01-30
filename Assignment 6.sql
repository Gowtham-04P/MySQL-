CREATE database sql_workbench;

use sql_workbench;
 create table student
 (regno varchar(9),
 Sname varchar(30),
 sub_1 int,
 sub_2 int,
 sub_3 int,
 sub_4 int,
 Major varchar(30),
 Minor varchar(30),
 DOB date);

insert into  student ( regno, Sname, sub_1, sub_2, sub_3, sub_4 , Major, Minor, DOB) 
values('1p23mbo10','gowtham','20','30','40','50','ba','hr','2002-09-04');
insert into  student ( regno, Sname, sub_1, sub_2, sub_3, sub_4 , Major, Minor, DOB)
values('1p23mbo11','ajith','21','32','43','54','ba','hr','2002-05-04');
insert into  student ( regno, Sname, sub_1, sub_2, sub_3, sub_4 , Major, Minor, DOB)
values('1p23mbo12','sasi','20','36','40','53','ba','hr','2002-06-04');
insert into  student ( regno, Sname, sub_1, sub_2, sub_3, sub_4 , Major, Minor, DOB)
values('1p23mbo13','mani','22','30','40','50','ba','hr','2002-02-04');
insert into  student ( regno, Sname, sub_1, sub_2, sub_3, sub_4 , Major, Minor, DOB)
values('1p23mbo14','kishore','22','30','40','50','ba','hr','2002-03-04');
insert into  student ( regno, Sname, sub_1, sub_2, sub_3, sub_4 , Major, Minor, DOB)
values('1p23mbo15','amul','20','33','40','50','ba','hr','2002-07-04');
insert into  student ( regno, Sname, sub_1, sub_2, sub_3, sub_4 , Major, Minor, DOB)
values('1p23mbo16','kalai','20','30','46','50','ba','hr','2002-10-04');
insert into  student ( regno, Sname, sub_1, sub_2, sub_3, sub_4 , Major, Minor, DOB)
values('1p23mbo17','gayathri','20','30','40','56','ba','hr','2002-11-04');
insert into  student ( regno, Sname, sub_1, sub_2, sub_3, sub_4 , Major, Minor, DOB)
values('1p23mbo18','evans','20','30','49','50','ba','hr','2002-12-04');
insert into  student ( regno, Sname, sub_1, sub_2, sub_3, sub_4 , Major, Minor, DOB)
values('1p23mbo19','dibu','20','33','40','50','ba','hr','2002-01-04');


select * from student
where Sname ;

select * from student 
where Sname like 'aj%';

select * from student 
where Sname like '%ns';

select Major  , count(*)
from student 
group by Major;

select Minor  , count(*)
from student 
group by Minor;
 
 
 select Major, count(*) from student
DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) as ranking
FROM student
GROUP BY Major
HAVING DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) = 2;