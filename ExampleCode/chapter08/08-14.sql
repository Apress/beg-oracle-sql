select e.deptno       as "department"
,      count(e.empno) as "number of employees"
from   employees e
group  by e.deptno;
