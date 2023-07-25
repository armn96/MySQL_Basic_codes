show databases;
use emp_info;
create table emp_info(Name varchar(20),Age int, Sex char(1), Date_of_join date, City varchar(20), Salaray float);
describe emp_info;
insert into emp_info values("Arman", 28, "M", "2009-08-08", "Dhaka", 80000),
("Raiyan", 25, "F", "2015-07-12", "Khulna", 70000),
("Rumman", 20, "M", "2016-01-01", "Barishal", 50000),
("Raida", 31, "F", "2007-06-11", "Khulna", 90000),
("Robiul", 35, "M", "2006-01-01", "Chandpur", 100000),
("Anika", 29, "F", "2015-09-10", "Jessore", 40000),
("Shakib", 33, "M", "2010-01-01", "Dhaka", 60000);

select * from emp_info;
select distinct city from emp_info;
select count(name) as total_employee from emp_info;
select sum(salaray) as total_salary from emp_info;
select avg(salaray) as average_of_male from emp_info where sex = "M";
select name, age, city from emp_info;
select * from emp_info where age < 30;
select * from emp_info where sex = "F";
select * from emp_info where city in("Dhaka", "khulna");
select * from emp_info where date_of_join between "2001-01-01" and "2010-01-01";
select * from emp_info where age > 30 and age < 36;
SELECT sex, SUM(salaray) AS total_sal FROM emp_info GROUP BY sex;
select * from emp_info where sex = "F" order by salaray;
select * from emp_info order by salaray desc;