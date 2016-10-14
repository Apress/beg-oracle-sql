select empno, ename, deptno, msal
from   e
       AS OF TIMESTAMP to_timestamp('01-OCT-2004 10:53:42.000');
