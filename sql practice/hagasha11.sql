--10.4
create procedure haalaa @achuz int
as
begin
	select AVG(maskoret + maskoret*@achuz/100) from haovdim
end
declare @hadash int = 1
while @hadash <= 10
	begin
		exec haalaa @achuz = @hadash
		set @hadash  = @hadash + 1
	end
--10.5
-- drop procedure haalaa2
create procedure haalaa2 @achuz int, @tosefet int output 
as
begin
set @tosefet=
			(select AVG(maskoret + maskoret*@achuz/100) from haovdim)
end
declare @achuz2 int =1
while @achuz2  <= 10
	begin
		declare @newmemuza int
		exec haalaa2 @achuz2, @newmemuza output
		 if @newmemuza > 13000
		 break
		 set @achuz2 = @achuz2+1
	end
	select @newmemuza
