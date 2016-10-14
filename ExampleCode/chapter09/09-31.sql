create table e as select * from employees;

alter session set nls_timestamp_format='DD-MON-YYYY HH24:MI:SS.FF3';

select localtimestamp as table_created from dual;

update e set msal = msal + 10;

commit;

select localtimestamp as after_update_1 from dual;

update e set msal = msal - 20 where  deptno = 10;

commit;

select localtimestamp as after_update_2 from dual;

delete from e where  deptno <= 20;

commit;

select localtimestamp as now            from dual;

