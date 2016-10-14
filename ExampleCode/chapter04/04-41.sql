select empno, ename, comm
from   employees
where  comm <= 400
or     comm is null;
