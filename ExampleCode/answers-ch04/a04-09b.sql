select empno, ename, init
from   employees
where  empno not in (select mgr
                     from   employees
                     where  mgr is not null);
