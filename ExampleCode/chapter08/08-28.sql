select deptno, count(*)
from   employees
group  by deptno
having deptno <= 20;

select deptno, count(*)
from   employees
where  deptno <= 20
group  by deptno;
