use pubs;
with s_q as (
    select * from titles where royalty = 10

)
select title from s_q;
select * from s_q;

