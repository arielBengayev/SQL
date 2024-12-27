select*from haovdim
--5.1
create table menahalim
(
siduri int identity(1,1) primary key, 
prati nvarchar(50),
mishpaha nvarchar(50),
bosmahlaka int
);

insert into  menahalim values
('avi','hagever', 1),
('izik','hameleh', 2),
('tami','hamalka', 3),
('kobi','hahatih', 4)
select * from menahalim
--5.2.1
select menahalim.prati from haovdim, menahalim
where menahalim.bosmahlaka = haovdim.machlaka 
and haovdim.prati='Rut' and haovdim.mishpacha='Backer'
--5.2.2
select max(maskoret) from haovdim
select menahalim.prati from haovdim, menahalim
where menahalim.bosmahlaka = haovdim.machlaka 
and haovdim.maskoret=19865
--5.2.3
select haovdim.prati, menahalim.prati from haovdim, menahalim
where menahalim.bosmahlaka = haovdim.machlaka 
and  tikishi between 50 and 200