-- ================================
-- htmldemoscript.sql
-- ================================

set echo off termout off
set markup html on spool on                   -
    preformat off entmap on                   - 
    head "<title>HTML Demo Report</title>     -
          <link rel='stylesheet' href='x.css'>"

spool htmldemo.htm replace

select empno, ename, init, msal
from   employees
where  deptno = 20;

spool off
set markup html off
set echo on
