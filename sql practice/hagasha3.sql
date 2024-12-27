--3.1
alter table haovdim add siduri int identity(1,1) primary key;
select * from haovdim

--3.2/3.2.1/3.2.2
alter table haovdim add check (maskoret>=8000);
select * from haovdim where maskoret <8000;
update haovdim set maskoret = 8000 where maskoret < 8000;
alter table haovdim add check(maskoret>=8000);
insert into haovdim (maskoret) values
(7500)

--3.3/3.3.1/3.3.2
alter table haovdim add unique (tikishi);
select * from haovdim order by  tikishi;
update haovdim set tikishi = 22 where siduri = 174
update haovdim set tikishi = 182 where siduri = 19
update haovdim set tikishi = 288 where siduri = 154
alter table haovdim add unique (tikishi);

--3.4
alter table haovdim add misparBonusim int;
alter table haovdim add check(misparBonusim<=5);
update haovdim set misparBonusim = 6 where tikishi between 40 and 60
