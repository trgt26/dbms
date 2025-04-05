select * from titles
where royalty in (2, 10, 24) 


select avg(price), sum(price), max(price), min(price), count(price), royalty 
from titles
group by royalty;
