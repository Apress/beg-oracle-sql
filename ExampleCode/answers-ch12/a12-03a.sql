create or replace type mx_tab_t
as table of number(2);
/

create table testnest
( x    number(1,0)
, mx   mx_tab_t
) nested table mx store as mx_tab;
