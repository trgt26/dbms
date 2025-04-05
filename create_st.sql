-- sh
use pubs;
-- SYS OBJECT
select * from sys.databases;
select * from sys.tables;


select title_id from titles
group by type;

select avg(price), royalty from titles
group by royalty
having avg(price) > 4

select * from titles
where avg(price) > 4


select title 
FROM (select * from titles where royalty = 10) as s_q




-- TOPICS
-- SELECT statement:
--  where, group, having, join, order by
-- CREATE statement:
--  database, table, view, index, procedure, trigger
-- UPDATE statement 
-- Aggeregagte function:
--  min, max, count, avg, sum
-- Conditional Satement
-- Operators:
--  in
-- MORE:
--  TRUNCATE, ALTER, DROP
-- CTE (Common Table Expression)