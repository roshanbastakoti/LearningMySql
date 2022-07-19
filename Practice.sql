-- create database onlineshopping;

use onlineshopping;

create table customer (
cid integer primary key,
cname varchar(20),
address varchar (20)
);
create table product (
pid integer primary key,
name varchar(20)
);
create table orders (
oid integer primary key,
pid int,
cid int,
paymentmode varchar(20),
foreign key (pid) references product(pid),
foreign key (cid) references customer(cid)
);
