set      termout off
store    set sqlplus_settings.sql replace
save     buffer.sql replace
set      verify off feedback off
set      termout on
break    on table_name skip 1 on index_type

accept   table_name default &&table_name -
         prompt 'List indexes on table [&table_name.%]: '

select   ui.table_name
,        case ui.index_type
              when 'NORMAL' then ui.uniqueness
              else ui.index_type
         end as index_type
,        ui.index_name
,       (select count(*)
         from   user_ind_columns uic
         where  uic.table_name = ui.table_name
         and    uic.index_name = ui.index_name) as col_count
from     user_indexes  ui
where    ui.table_name like upper('&table_name.%')
order by ui.table_name
,        ui.uniqueness desc;

get      buffer.sql nolist
@sqlplus_settings
set      termout on
