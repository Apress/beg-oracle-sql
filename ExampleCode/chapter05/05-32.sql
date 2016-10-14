select deptno, dname, location
,      emp_count(deptno)
from   departments;
