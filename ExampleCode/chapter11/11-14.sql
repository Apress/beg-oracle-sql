set numwidth 5
set null " [N/A]"

select ename, mgr, comm
from   employees
where  deptno = 10;

set numformat 09999.99

select * from salgrades;

set numformat 99999
