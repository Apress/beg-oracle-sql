set    pagesize 0 verify off feedback off trimspool on
spool  doit.sql replace

select 'ALTER TABLE '||table_name
       ||' DISABLE CONSTRAINT '||constraint_name
       ||' CASCADE;'
from   user_constraints
where  status <> 'DISABLED'
order  by case constraint_type
       when 'P' then 1 else 2 end;

spool  off
@doit
exit
