select *
from   employees
where  deptno = &&1
and    job    = upper('&2')
/
select *
from   departments
where  deptno = &1
/
undefine 1
