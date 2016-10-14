select   deptno, job
,        count(empno) headcount
from     employees
group by CUBE(deptno, job);
