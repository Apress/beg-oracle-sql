select e.ename as employee
,      m.ename as manager
from   employees m
,      employees e
where  e.mgr = m.empno
and    e.bdate > date '1965-01-01'
/
