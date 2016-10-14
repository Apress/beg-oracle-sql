select ename, msal, comm, 12*msal + comm
from   employees
where  empno < 7600;
