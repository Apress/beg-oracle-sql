select ename
,      ltrim(ename,'S') as ltrim_s
,      rtrim(ename,'S') as rtrim_s
from   employees
where  deptno = 20;
