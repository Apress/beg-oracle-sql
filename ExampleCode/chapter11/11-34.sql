clear   screen
set     pause off
break   on deptno skip page -
        on job

compute sum label total of msal on deptno
compute count number    of comm on deptno

set     trimspool on
set     feedback off
spool   report.txt replace

select  deptno, job, empno, ename, msal, comm
from    employees
order   by deptno, job;

spool   off

clear   computes
clear   breaks
set     pause on
set     feedback on
