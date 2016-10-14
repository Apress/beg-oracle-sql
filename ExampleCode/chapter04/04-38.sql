select ename, init, bdate
from   employees
where  bdate > (select bdate
                from   employees
                where  ename = 'JONES');
