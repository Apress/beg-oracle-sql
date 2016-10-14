drop type number_tab_t;

create type number_tab_t
as table of numberlist_t;
/

select cast(collect(numlist) as number_tab_t) as result
from   e
where  empno in (7839, 7782);
