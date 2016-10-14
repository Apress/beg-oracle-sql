select d.deptno, d.location
,      e.ename, e.init
from   employees e, departments d
where  e.deptno(+) = d.deptno
order  by d.deptno, e.ename;
