select e.deptno, count(*)
from   employees e
group  by e.deptno;
