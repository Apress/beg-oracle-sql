set numwidth 3
col code format a7
col ch fold_before

select code
,      c.description
,      e.ch, e.pg, e.txt
from   c
       join
       table(c.errata) e
       using (code);
