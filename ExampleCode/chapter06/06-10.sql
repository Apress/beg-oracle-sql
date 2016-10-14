create table delta_tab
(pid number, sales number, status varchar2(6));

create table master_tab
(pid number, sales number, status varchar2(6));

insert into master_tab values(1,12,'CURR');

insert into master_tab values(2,13,'NEW' );

insert into master_tab values(3,15,'CURR');

insert into delta_tab  values(2,24,'CURR');

insert into delta_tab  values(3, 0,'OBS' );

insert into delta_tab  values(4,42,'CURR');

commit;

