select ename, beginyear, msal, deptno
from   employees
       natural join
       history;
