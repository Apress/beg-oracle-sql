--  ==================================
--  SQL*Plus script: constraints.sql
--  constraints overview with statuses
--  Mastering Oracle SQL and SQL*Plus
--  Lex de Haan
--  Apress, 2005
--  ==================================

col   constraint_name format a15
col   table_name      format a15
col   type            format a6
break on table_name   page

select   table_name
,        constraint_name
,        case constraint_type
              when 'P' then 'PRIKEY'
              when 'U' then 'UNIQUE'
              when 'C' then ' CHECK'
              when 'R' then 'FORKEY'
                       else ' OTHER'
         end  as type
,        status
from     user_constraints
order by table_name
,        type;

clear breaks
