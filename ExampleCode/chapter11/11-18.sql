connect / as sysdba

select executions, sql_text
from   v$sqlarea
where  sql_text like 'select * from employees %';
