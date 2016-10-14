select e.empno, e.ename, e.job, e.msal
from   employees e
where  e.msal > ALL (select x.msal
                     from   employees x
                     where  x.job = 'MANAGER');
