select   d.deptno
,        d.dname
,        count(e.empno) as headcount
from     employees e
,        departments d
where    e.deptno = d.deptno
group by d.deptno
,        d.dname;
