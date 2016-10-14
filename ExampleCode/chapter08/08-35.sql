select deptno
,      sum(msal)
from   employees
group  by deptno;
