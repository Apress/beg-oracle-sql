select deptno, ename, init, msal
from   employees
where  msal < 1500
order  by deptno, ename;
