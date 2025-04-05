create procedure pr_test
    @par1 int,
    @par2 varchar(39),
    @par3 date,
    @par4 datetime
AS
begin
    select * from titles;
end


-- Sotred Procedur
drop procedure sp_test;
select * from sys.procedures;
go
create procedure sp_test 
as 
BEGIN
    select * from titles;
end
go
exec sp_helptext byroyalty;
