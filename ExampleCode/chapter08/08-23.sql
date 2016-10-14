select deptno, count(*)
from   employees e
       right outer join
       departments d
       using (deptno)
group  by deptno;
