--7.1
select * from haovdim where tikishi <  (select min(tikishi) from haovdim where maskoret>17285)
--7.2 
select * from haovdim where machlaka = (select machlaka from haovdim where maskoret=19865)
--7.3
select * from haovdim where maskoret > (select avg(maskoret+4000) from haovdim)
--7.4 
select * from haovdim where machlaka = 4 and maskoret > (select max(maskoret) from haovdim where machlaka=3)
--7.5
select * from haovdim where machlaka = 4 and maskoret > (select min(maskoret) from haovdim where machlaka=3)
--7.7 
select top 2 count(machlaka) as godel,machlaka from haovdim group by machlaka order by count(machlaka)
--7.9
select * from menahalim where exists (select max(schum) from halvaot having max(schum) > 28001)
--7.10
drop table luserim
create table luserim
( 
shem nvarchar(50),
bosshel int
)

insert into luserim
	select distinct menahalim.prati, bosmahlaka from menahalim, haovdim 
where menahalim.bosmahlaka = haovdim.machlaka and maskoret < 9000
select * from luserim
