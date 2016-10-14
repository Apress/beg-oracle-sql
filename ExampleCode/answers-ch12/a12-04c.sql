select x
,      cardinality(powermultiset(mx))
from   testnest
where  cardinality(powermultiset(mx)) > 42;

drop table testnest;
drop type mx_tab_t force;
