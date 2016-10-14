-- ================================
-- htmldemoscript.sql
-- ================================

set echo off termout off heading on
set markup html on spool on                   -
    preformat off entmap on                   - 
    head "<title>HTML Demo Report</title>     -
          <link rel='stylesheet' href='x.css'>"

spool  htmldemo.htm replace

select empno, ename, init, msal
from   employees
where  deptno = 20;

set    markup html entmap off preformat on
set    heading off

select '<a href="http://www.naturaljoin.nl">'||
       'Visit this web site</a>'
from   dual;

spool  off
set    markup html off
set    echo on
