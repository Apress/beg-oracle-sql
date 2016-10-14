select ename, init
from   employees
where  not (ename = 'JONES' and init = 'R');
