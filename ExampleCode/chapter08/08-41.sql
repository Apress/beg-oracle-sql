select   deptno, job
,        grouping_id(deptno, job) gid
from     employees
group by CUBE(deptno, job);
