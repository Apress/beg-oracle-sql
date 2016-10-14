select ename
,      floor(   (sysdate-bdate)/7) as weeks
,      floor(mod(sysdate-bdate,7)) as days
from   employees
where  deptno = 10;
