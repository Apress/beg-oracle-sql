select e.ename, e.init, e.msal
from   employees e
where  e.msal > (select avg(x.msal)
                 from   employees x
                 where  x.deptno = e.deptno);
