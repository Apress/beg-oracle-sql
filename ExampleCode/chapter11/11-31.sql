clear  columns

select deptno, job, empno, ename, msal, comm
from   employees
order  by deptno, job;

break  on deptno skip 2
/
break
break  on deptno page
set    pause on
/
