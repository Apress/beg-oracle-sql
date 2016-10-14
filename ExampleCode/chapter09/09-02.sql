select e.empno, e.ename, e.init, e.bdate
from   employees e
where  e.bdate > (select x.bdate
                  from   employees x
                  where  x.empno = 7566);
