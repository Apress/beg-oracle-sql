select d.dname as department
,      e.job   as job
,      e.ename as employee
from   employees e
       PARTITION BY (JOB)
       right outer join
       departments d
       using (deptno)
order  by department, job;

clear breaks
