select   deptno
,        case grouping_id(deptno,job)
              when 0 then job
              when 1 then '**dept **'
              when 3 then '**total**'
         end  job
,        count(empno) headcount
from     employees
group by ROLLUP(deptno, job);
