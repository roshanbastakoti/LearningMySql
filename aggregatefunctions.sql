select sum(total_sales) from staffs;
select avg(total_sales) from staffs;
select min(total_sales) from staffs;
select max(total_sales) from staffs;
select count(total_sales) from staffs;
select s_name, total_sales from staffs order by total_sales asc;
select s_name, total_sales from staffs order by total_sales desc;