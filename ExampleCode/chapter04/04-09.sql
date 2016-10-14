select ename, (sysdate-bdate)/365
from   employees
where  empno = 7839;
