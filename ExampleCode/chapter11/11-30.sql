set    pagesize 22
set    linesize 80

ttitle left        'SQL*Plus report'          -
       right       'Page: ' format 99 SQL.PNO -
       skip center 'OVERVIEW'                 -
       skip center 'employees department 30'  -
       skip 2

btitle col 20 'Confidential' tab 8 -
              'Created by: ' SQL.USER

select empno, ename, bdate
,      msal         as salary
,      comm         as commission
from   employees
where  deptno = 30;

btitle off
btitle
ttitle off
