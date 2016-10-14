break on department skip 1 on job

select d.dname as department
,      e.job   as job
,      e.ename as employee
from   employees e
       right outer join
       departments d
       using (deptno)
order  by department, job;
