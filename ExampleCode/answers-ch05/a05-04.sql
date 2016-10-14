select ename, msal, comm
,      nvl2(comm,12*msal+comm,12*msal) as yearsal
from   employees
where  ename like '%T%';
