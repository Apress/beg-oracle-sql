comment on table salgrades
is     'Salary grades and net bonuses';

comment on column employees.comm
is     'For sales reps only';

select comments
from   user_tab_comments
where  table_name  = 'SALGRADES';

select comments
from   user_col_comments
where  table_name  = 'EMPLOYEES'
and    column_name = 'COMM';
