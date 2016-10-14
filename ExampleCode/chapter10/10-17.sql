create or replace view dept20_v as
select * from employees where deptno = 20
with check option constraint dept20_v_check;

insert into dept20_v
values ( 9999,'BOS','D', null, null
       , date '1939-01-01'
       , '10', null, 30);
