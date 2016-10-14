select e.ename, e.job, e.msal
from   employees e
where  e.msal > (select max(x.msal)
                 from   employees x
                 where  x.job = 'MANAGER');
