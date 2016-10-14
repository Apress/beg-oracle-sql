select ename
,      sys_connect_by_path(ename,'|') as path
from   employees
       start with mgr is null
       connect by prior empno = mgr
order  siblings by ename;

c/siblings//

/
