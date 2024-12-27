--9.1
select * from haovdim order by leda
select top 5 prati, leda from haovdim order by leda desc
--9.2
select datediff(day,leda, CURRENT_TIMESTAMP) as batkama from haovdim 
where prati='Shelly' and mishpacha='Gartner'

select datediff(day, leda, dateadd(year,15,CURRENT_TIMESTAMP)) as batkama from haovdim 
where prati='Shelly' and mishpacha='Gartner'
--9.3 
select datepart(month, leda) as hodesh, count(*) as birthday from haovdim 
group by datepart(month, leda)
--9.4
select *,datediff(year,leda, CURRENT_TIMESTAMP) from haovdim 
where datediff(day,leda, CURRENT_TIMESTAMP) > 42*365
--9.5
select day(leda) as yom, datename(MONTH, leda) as hodesh from haovdim 
order by datepart(MONTH, leda) ,yom