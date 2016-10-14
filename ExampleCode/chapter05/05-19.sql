select ename
,      months_between(sysdate,bdate)
from   employees
where  deptno = 10;
