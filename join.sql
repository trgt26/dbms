
-- JOIN STATEMENT
select * 
from sales as tb1
join titles as tb2
on tb1.title_id = tb2.title_id
where royalty > 3
