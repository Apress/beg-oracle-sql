break  on deptno skip page -
       on job    skip 1

select deptno, job, empno, ename, msal, comm
from   employees
order  by deptno, job;

break
