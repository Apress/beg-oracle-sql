set feedback on
select ename
from employees
where empno not in (select mgr from employees);
