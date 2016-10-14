column  full_path format a40

select  ename
,       connect_by_root ename            as manager
,       sys_connect_by_path(ename,' > ') as full_path
from    employees
start   with job = 'MANAGER'
connect by prior empno = mgr;
