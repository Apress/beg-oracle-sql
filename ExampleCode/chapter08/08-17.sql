select e.comm, count(e.empno)
from   employees e
group  by e.comm;
