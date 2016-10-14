set linesize 70
break on row page

select *
from   table ( select powermultiset(errata)
               from   c
               where  code = 'SQL' );

clear breaks
