-- Trigger
select * from sys.triggers;
go
create trigger tr_test
on titles
for INSERT
as
begin 
    select * from sales;
end
go
