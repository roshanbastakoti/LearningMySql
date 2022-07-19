CREATE DATABASE Players;
use Players;
create table players(
player_id int,
player_name varchar (20));

insert into players(player_id,player_name)
values (101, "B.Fernades"),
(102,"R.Lukaku"), 
(103, "L.Messi"), 
(104, "C.Ronaldo");

create table club(
p_id int, 
c_id varchar(20), 
club_name varchar (20));

insert into club (p_id,c_id,club_name)
values (101, "C101", "M.United"),
 (102, "C102", "Chelsea"),
 (103, "C103", "PSG");

insert into club (c_id,club_name)
values ("C104","R.Madrid")

select p_id, player_name , c_id , club_name from players inner join club on players.player_id = club.p_id;
select player_id, player_name , c_id , club_name from players left join club on players.player_id = club.p_id;
select p_id, player_name , c_id , club_name from players right join club on players.player_id = club.p_id;





