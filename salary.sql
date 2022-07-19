create Database Job;

create table Staffs(staff_no int , staff_name varchar (20) , staff_salary float);

insert into Staffs(staff_no  , staff_name  , staff_salary )
values(1,"Roshan", 10000),(2,"Sakar",20000),(3,"Achuyt",30000);

select staff_no, salary*12 as  monthlySalary from Staffs;


