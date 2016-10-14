select e.empno
,      e.ENAME
,      e.init
,      d.dname
,      d.location
,      m.ENAME    as MANAGER
from   employees   e
       join
       departments d using (deptno)
       join
       employees   m on (m.empno = d.mgr);
