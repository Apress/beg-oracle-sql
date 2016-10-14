select   deptno, job
,        count(empno) headcount
from     employees
group by ROLLUP(deptno, job);
