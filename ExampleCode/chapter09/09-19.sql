select  ename, LEVEL
from    employees
START   WITH mgr is null
CONNECT BY NOCYCLE PRIOR empno = mgr;
