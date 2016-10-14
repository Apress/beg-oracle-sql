select   deptno
,        case grouping(job)
              when 0 then job
              when 1 then '**total**'
         end  job
,        count(empno) headcount
from     employees
group by ROLLUP(deptno, job);
