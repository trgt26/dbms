-- CONDITIONAL STATEMENT
declare @var varchar(39) = 'hi';
if @var = 'hi' begin
    -- select @var;
    select * from sys.tables;
end
