select empno, ename, bdate
,      msal         as salary
,      comm         as commission
from   employees;

col ename      format  a20 hea last_name jus c
col salary     format  $9999.99
col commission like    salary
col salary     heading month|salary

run
