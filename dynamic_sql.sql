
-- DYNAMIC SQL
declare @fieldName nvarchar(40) = 'price';
declare @qry nvarchar(99) = 'select ' + @fieldName + ' from titles' 

EXEC sp_executesql @qry;