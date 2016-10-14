select deptno, count(empno)
from   employees
group  by deptno
having count(*) >= 4;
