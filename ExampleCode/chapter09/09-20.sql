select  lpad(' ',2*level-1)||ename as ename
from    employees
start   with mgr is null
connect by nocycle prior empno = mgr;
