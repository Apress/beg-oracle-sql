alter table registrations
add  (entered_by number(4) default 7839 not null);

alter table registrations
drop  column entered_by;
