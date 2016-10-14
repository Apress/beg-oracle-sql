-- just to make sure...
drop view e;
drop table e;

create table e
as
select empno, ename, init, mgr, deptno
from   employees;
