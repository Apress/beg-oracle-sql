select   job
,        count(case
               when deptno <> 10
               then null
               else deptno
               end                ) as dept_10
,        sum(case deptno
             when 20
             then 1
             else 0
             end                  ) as dept_20
,        sum(decode(deptno,30,1,0)) as dept_30
from     employees
group by job;
