accept table_name            -
       default &&table_name  -
       prompt 'Create index on table [&table_name]: '
accept column_name           -
       default &&column_name -
       prompt 'on column(s) [&column_name]: '
set    termout off
store  set sqlplus_settings replace
save   buffer.sql replace
column dummy new_value index_name
set    heading off feedback off verify off
set    termout on

select 'Creating index'
,      upper(substr( 'i_'                      ||
                     substr('&table_name',1,3) ||
                     '_'                       ||
                     translate
                     ( replace
                       ( '&column_name'
                       , ' ', '')
                     , ',', '_')
                   , 1, 30)
       ) as dummy
,      '...'
from   dual;

create index &index_name
on &table_name(&column_name);

get buffer.sql nolist
@sqlplus_settings
set    termout on
