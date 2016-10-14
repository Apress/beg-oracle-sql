alter MATERIALIZED VIEW dept20_mv enable query rewrite;

set autotrace on explain

select *
from   employees
where  deptno = 20
and    job = 'TRAINER';

-- ========================================
-- alternative approach
-- ========================================
-- explain plan for
-- select * from employees
-- where deptno = 20 and job = 'TRAINER';

-- select * from table(dbms_xplan.display);

set autotrace off
