-- just to make sure...
drop view c;
drop table c;

create table c
as
select * from courses;

alter table c
add (errata errata_tab_t)
nested table errata store as errata_tab;

update c
set    errata = errata_tab_t();
