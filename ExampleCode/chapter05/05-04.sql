select empno as odd_empno
,      ename
from   employees
where  mod(empno,2) = 1;
