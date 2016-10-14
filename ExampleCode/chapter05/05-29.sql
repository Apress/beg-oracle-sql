select ename, substr(bdate,8)+16
from   employees
where  deptno = 10;
