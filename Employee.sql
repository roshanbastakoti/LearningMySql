create Database Employee;
use  Employee;

create table employee(
employee_id int ,
employee_name varchar (20),
employee_salary int,
employee_position varchar(20));

insert into employee (employee_id,employee_name,employee_salary,employee_position)
values (101,"Roshan",1000, "staff"),
(102, "Sakar", 2000, "Manager"),
(103, "Achuyt", 3000, "CEO"),
(104,"Saugat",4000,"BOD"),
(105,"Pramod", 5000, "Admin")
insert into employee (employee_id,employee_name,employee_salary,employee_position)
values(106,"Khusi",7000, "staff");


select employee_name from employee where employee_salary > (select employee_salary from employee where employee_id = 101 );
select employee_name,employee_position from employee where employee_position = (select employee_position from employee where employee_id=101);
select avg (employee_salary) from employee;
select employee_name from employee where employee_salary > (select avg (employee_salary) from employee);