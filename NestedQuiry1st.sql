create database Branch;
use Branch;
create table branch (
branch_no int, branch_name varchar(20), branch_address varchar (20));

insert into branch (branch_no , branch_name , branch_address)
values (1,"HR","ktm"),
(2, "IT","pkr"),
(3, "Admin","pkr");

select * from staff where branch_no =(select branch_no from branch where branch_name = "IT");
select branch_name from Branch where branch_no = (select branch_no from branch where staff_name = "Saugat")
