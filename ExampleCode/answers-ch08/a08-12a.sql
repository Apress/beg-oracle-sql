-- Listing 8-26:
-- ===========================
-- select deptno, count(empno)
-- from   employees
-- group  by deptno
-- having count(*) >= 4;
-- ===========================
-- wrong negation:

select deptno, count(empno)
from   employees
group  by deptno
having count(*) < 4;
