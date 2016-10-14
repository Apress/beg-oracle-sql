select   d.deptno
,        d.dname
,        count(e.empno) as headcount
from     employees e
,        departments d
where    e.deptno = d.deptno
group by d.deptno
,        d.dname
union
select   x.deptno
,        x.dname
,        0        as headcount
from     departments x
where    x.deptno not in (select y.deptno
                          from   employees y);
