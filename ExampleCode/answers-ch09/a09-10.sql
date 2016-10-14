select     ename, init
,          (level - 1) as levels_above
from       employees
where      connect_by_isleaf = 1
start with mgr is null
connect by prior empno = mgr;
