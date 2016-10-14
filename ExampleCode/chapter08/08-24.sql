select deptno, count(e.empno)
from   employees e
       right outer join
       departments d
       using (deptno)
group  by deptno;
