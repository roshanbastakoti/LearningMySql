CREATE DATABASE Insurance;
USE Insurance;
 -- Create table PERSON (driver_id_no varchar (20),
 name varchar (20), 
 address varchar (20));
 
Create table CAR (reg_no varchar (20),
model varchar (20), 
year int);
 
 Create table Accident (report_no int,
 date date,
 location varchar (20));
 
 Create table OWNS(driver_id_no varchar (20),
 reg_no varchar (20));
 
 Create table PARTICIPATED (driver_id_no varchar (20),
 reg_no varchar (20),
 report_no int,
 damage_amount int);

Insert into PERSON (driver_id_no,name,address)
values (1, "Ram","kamalbinayak"),
(2,"Sam","Jagate"),
(3,"Hari","Suryabinayak"),
(4,"Gita","Sallaghari"),
(5,"Sita","Tinkune");

Insert into CAR (reg_no, model, year)
values ("A1","Hundai",2000),
("A2","TATA", 2005),
("A3", "TOYOTA", 2010),
("A4", "Photon" , 2015),
("A5", "JCB", 2020);

Insert into ACCIDENT (report_no, date, location)
values (10, "2001-01-01","Newroad"),
 (11, "2002-02-02","oldroad"),
 (12, "2003-03-03","Pipeline"),
 (13, "2004-04-14","Koteshowr"),
 (14, "2005-05-15","BpHighway");

Insert into OWNS (driver_id_no, reg_no)
values (1, "A1"),
(2, "A2"),
(3, "A3"),
(4, "A4"),
(5, "A5");

Insert into PARTICIPATED(driver_id_no, reg_no, report_no, damage_amount)
values (1,"A1",10, 500),
(2,"A2",11,1000),
(3,"A3",12,18000),
(4,"A4",13,15000),
(5,"A5",14,3000);

update participated set damage_amount=25000 where report_no=12 and reg_no='A3';

Insert into ACCIDENT (report_no,date,location)
values (15,"2005-05-18","SallaghariHighway");

Insert into PARTICIPATED(driver_id_no, reg_no, report_no, damage_amount)
values (3,"A3",15,9000)



Insert into accident (report_no,date,location)
values (16,"2002-08-16","MaitideviRoad");



Insert into PARTICIPATED(driver_id_no, reg_no, report_no, damage_amount)
values (6,"A4",16,9000);

select count(*) from PARTICIPATED where report_no IN (
select report_no from accident where date between "2002-01-01" AND "2002-12-31"
);

select count(*), model 
from PARTICIPATED  
join CAR
on CAR.reg_no = PARTICIPATED.reg_no 
group by model;






