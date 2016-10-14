-- there might be tables from previous examples
drop table emp;
drop table crs_offerings;

create or replace view emp as
select empno, ename, init
from   employees;

create or replace view avg_evaluations as
select course
,      avg(evaluation) as avg_eval
from   registrations
group  by course;
