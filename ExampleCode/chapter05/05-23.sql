select ename, msal, comm
,      12*msal+nvl(comm,0) as yearsal
from   employees
where  ename like '%T%';
