select empno, ename, init
from   employees
where  empno in (select mgr
                 from   employees);
