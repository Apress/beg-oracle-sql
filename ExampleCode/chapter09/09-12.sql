select ename
from employees
where empno in (select mgr from employees);

select e1.ename
from employees e1
where exists (select e2.mgr
                 from   employees e2
                 where e1.empno = e2.mgr);
