select lpad(msal,4)||' '||
       rpad('o',msal/100,'o') as histogram
from   employees
where  deptno = 30;
