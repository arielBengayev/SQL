create table tsiunim
(
 siduri int identity(1,1) primary key,
 shem nvarchar(20),
 tsiun int
)
Insert into tsiunim values
('david', 97),
('miryam', 89),
('natan', 12),
('uri', 91),
('nelson', 45),
('mandela', 86),
('herzel', 67)

select*from tsiunim

-- drop procedure factor
create procedure factor @haalaa int
as
begin
begin tran
update tsiunim set tsiun = tsiun + @haalaa where tsiun < 100
declare @gadol int
set @gadol = (select count(*) from tsiunim where tsiun > 100)
if @gadol > 0
	begin
	rollback tran
	end
else
	begin
	commit tran
	end
select*from tsiunim
end

exec factor @haalaa = 2
select*from tsiunim


