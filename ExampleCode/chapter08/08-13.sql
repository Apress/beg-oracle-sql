select deptno, d.location
,      e.ename, e.init
from   employees e
       right outer join
       departments d
       using (deptno)
order  by deptno, e.ename;
