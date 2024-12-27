--4.1
select  count(*) as machlaka3Count from haovdim
where machlaka = 3
--4.2
select avg(maskoret) as "maskoretAvg" from haovdim
--4.3
select sum(maskoret) as machlaka1Sum from haovdim
where machlaka = 1
--4.4
select min(maskoret) as "MinMaskoret" from haovdim
where tikishi between 200 and 300
--4.5
select machlaka, avg(maskoret) as AvgMskoretByMc from haovdim 
group by machlaka
--4.6
alter table haovdim add vetek nvarchar(20);
update haovdim set vetek = 'vatikim' where tikishi < 150
update haovdim set vetek = 'benoni' where tikishi between 150 and 300
update haovdim set vetek = 'chadash' where tikishi > 300
select * from haovdim
--4.6.1
select  count(machlaka) as machlaka4Count from haovdim
where vetek = 'chadash' and machlaka = 4
--4.6.2
select max(maskoret) as "maxMaskoret" from haovdim
where vetek = 'benoni'
--4.6.3
select vetek, avg(maskoret) as avgByVetek from haovdim group by vetek
having avg(maskoret) > 10000
--4.6.4
select vetek, max(maskoret) as bigMaskoret from haovdim group by vetek
order by max(maskoret)
