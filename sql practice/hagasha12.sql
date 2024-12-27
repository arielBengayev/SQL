--11.1 
create table kodim
(
siduri int identity(1,1) primary key, 
opzia nvarchar(50),
);

insert into kodim values
  ('lo ba'), 
  ('llo ben zug im ohel'), 
  ('llo ben zug llo ohel'), 
  ('ben zug llo ohel'), 
  ('ben zug im ohel') 
;
select*from kodim
--11.2
select*from haovdim
alter table haovdim add tiyul int
update haovdim 
set tiyul = floor(RAND(CAST(NEWID() AS VARBINARY))*5)+1
--11.3
create view mabat
as
select prati, mishpacha, machlaka, opzia from haovdim, kodim
where haovdim.tiyul = kodim.siduri
select*from mabat
--11.4.1
select*from mabat where opzia = 'ben zug im ohel'
--11.4.2
select opzia, count(*) as mishtatfim from mabat group by opzia
--11.4.3
select machlaka as lobaaim from mabat where opzia='lo ba' group by machlaka having count(*)>10
--11.5
update haovdim set tiyul = 2 where prati='Gabriel' and mishpacha='Zangwill'
select*from mabat