drop table dept20_t;
drop materialized view dept20_mv;

create or replace VIEW dept20_v as
select * from employees where deptno = 20;

create TABLE dept20_t as
select * from employees where deptno = 20;

create MATERIALIZED VIEW dept20_mv as
select * from employees where deptno = 20;
