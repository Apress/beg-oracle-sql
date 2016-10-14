select e.empno
from   employees e
where  e.msal > (select avg(x.msal)
                 from   employees x);
