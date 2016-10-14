select count(deptno), count(distinct deptno)
,      avg(comm),     avg(nvl(comm,0))
from   employees;
