set     pause off
break   on deptno skip page -
        on job

compute sum label total of msal on deptno
compute count number    of comm on deptno

select  deptno, job, empno, ename, msal, comm
from    employees
order   by deptno, job;

compute
clear   computes
clear   breaks
