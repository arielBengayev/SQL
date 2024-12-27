select * from haovdim
--10.1
select *,datediff(year,leda, CURRENT_TIMESTAMP) as age from haovdim 
where datediff(day,leda, CURRENT_TIMESTAMP) <= 40*365 and machlaka=3 and  maskoret>16000
--10.2
declare @memuza float = (select avg(maskoret) from haovdim)
select count(*) as kama from haovdim where maskoret > @memuza*1.25
--10.3
--drop procedure memuza
create procedure memuza @tosefet float
as
begin
select avg(maskoret*@tosefet) as newmemuza from haovdim
end
exec memuza @tosefet = 1.02
exec memuza @tosefet = 1.05
exec memuza @tosefet = 1.10