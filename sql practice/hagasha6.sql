select * from haovdim
select * from menahalim
--5.3/6.2
--drop table halvaot
create table halvaot
(
siduri int identity(1,1) primary key, 
lekoachsiduri int foreign key references haovdim(siduri),
schum int
);

insert into halvaot values
   
  ( 6, 1000), 
  ( 3, 1000), 
  ( 12, 1500),
  ( 9, 500),
  ( 24, 700),
  ( 8, 500),
  ( 13, 2000),
  ( 17, 1000),
  ( 22, 500)
  ;
  select * from halvaot
  --5.4
 select menahalim.prati, halvaot.schum from haovdim, menahalim, halvaot
 where menahalim.bosmahlaka = haovdim.machlaka and haovdim.siduri = halvaot.lekoachsiduri
 --5.5
  select  menahalim.prati, count(*) as ovdimnum, sum (halvaot.schum) as sahacol from haovdim, menahalim, halvaot 
 where menahalim.bosmahlaka = haovdim.machlaka and haovdim.siduri = halvaot.lekoachsiduri group by menahalim.prati
 --6.1
 alter table halvaot add check (schum<=30000);
--6.2 בוצע כבר בהקמת הטבלה 
alter table halvaot
add foreign key (lekoachsiduri) references haovdim(siduri);
--6.3
insert into halvaot values
(220,500);
--
delete from haovdim where siduri = 1
--
delete from halvaot where lekoachsiduri = 1
delete from haovdim where siduri = 1

