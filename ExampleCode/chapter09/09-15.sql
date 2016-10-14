select d.deptno, d.dname, d.location
,     (select count(*)
       from   employees e
       where  e.deptno = d.deptno) as emp_count
from   departments d;
