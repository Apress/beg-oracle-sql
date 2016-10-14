-- Listing 8-26:
-- ===========================
-- select deptno, count(empno)
-- from   employees
-- group  by deptno
-- having count(*) >= 4;
-- ===========================

-- correct negation:

select deptno, count(empno)
from   departments
       left outer join
       employees
       using (deptno)
group  by deptno
having count(*) < 4;
