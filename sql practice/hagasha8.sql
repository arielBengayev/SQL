--8.1
select * from doalreshima
--8.2
alter table doalreshima add
lotakin nvarchar (15),
lama nvarchar (20)
--8.3
update doalreshima set lotakin ='Y', lama = 'katzar' where len(doal) < 10
update doalreshima set lotakin ='Y', lama = 'bli @' where charindex('@',doal) = 0
update doalreshima set lotakin ='Y', lama = 'bli .' where charindex('.',doal) = 0
update doalreshima set lotakin ='Y', lama = '@ lo bamakom' where left(doal,1) = '@' or RIGHT(doal,1) = '@'
update doalreshima set lotakin ='Y', lama = '. lo bamakom' where left(doal,1) = '.' or RIGHT(doal,1) = '.'
update doalreshima set lotakin ='Y', lama = '@ 1 yoter' where CHARINDEX('@', doal, CHARINDEX('@',doal)+1) > 0 
update doalreshima set lotakin ='Y', lama = 'revah' where CHARINDEX(' ', doal) > 0
update doalreshima set lotakin ='Y', lama = 'bli . aharey @' where charindex('.',doal,charindex('@',doal)) = 0
select count(*) as shguim from doalreshima where lotakin = 'Y' 
select * from doalreshima where lotakin = 'Y' 