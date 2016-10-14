select empno
from   employees
where  deptno <> (select deptno
                  from   departments
                  where  dname = 'TRAINING');
