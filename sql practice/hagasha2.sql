--2.1
update haovdim 
set mishpacha = 'cohen' where mishpacha = 'rubin' and prati='oshra'
select * from haovdim

--2.2
select * from haovdim where maskoret < 7500
update haovdim 
set maskoret = maskoret*1.1 where maskoret < 7500
select * from haovdim where maskoret < 7500

--2.3
alter table haovdim add bonus int
update haovdim set bonus=0
select * from haovdim
--2.3.1
update haovdim 
set bonus = 50 where machlaka = 1
select * from haovdim
--2.3.2
alter table haovdim drop column bonus
select * from haovdim 

--2.4
delete from haovdim where tikishi > 390
select * from haovdim 

