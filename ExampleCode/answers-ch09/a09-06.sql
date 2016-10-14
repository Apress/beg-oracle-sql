select e.empno, e.ename, e.job, e.msal
from   employees e
where  e.msal > ALL (select b.msal
                     from   employees b
                     where  b.job = 'BARTENDER');

select e.empno, e.ename, e.job, e.msal
from   employees e
where  e.msal >     (select max(b.msal)
                     from   employees b
                     where  b.job = 'BARTENDER');
