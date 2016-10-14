select e.deptno
,      count(e.job)
,      sum(e.comm)
,      avg(e.msal)
,      median(e.msal)
from   employees e
group  by e.deptno;
