select e.ename as employee
,      m.ename as manager
from   employees m
       JOIN
       employees e
       ON e.mgr = m.empno
where  e.bdate > date '1965-01-01'
order  by employee;
