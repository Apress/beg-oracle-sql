purge recyclebin;
drop table history;

select object_name, original_name, droptime
from   recyclebin;

flashback table history to before drop;
