select e1.ename
from employees e1
where not exists (select e2.mgr
                  from   employees e2
                  where e1.empno = e2.mgr);

