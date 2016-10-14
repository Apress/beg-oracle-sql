select   deptno, count(empno)
from     employees
where    bdate > date '1960-01-01'
group by deptno
having   count(*) >= 4;
