-- ==================================
-- SQL*Plus script: indexes.sql
-- Overview of all case table indexes
-- Mastering Oracle SQL and SQL*Plus
-- Lex de Haan
-- Apress, 2005
-- ==================================

col table_name  format a15
col index_name  format a15
col unq         format a9
col column_name format a15

set linesize 80

break on table_name skip 1 -
      on index_name        -
      on unq               -
      on status

select   table_name
,        index_name
,        i.uniqueness as unq
,        i.status
,        ic.column_name
from     user_indexes     i  join
         user_ind_columns ic using (table_name,index_name)
where    table_name in ('EMPLOYEES','DEPARTMENTS','SALGRADES'
                       ,'COURSES','OFFERINGS'
                       ,'REGISTRATIONS','HISTORY')
order by table_name
,        index_name
,        unq
,        ic.column_position;

clear breaks
