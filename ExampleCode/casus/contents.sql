-- =================================
-- SQL*Plus script: contents.sql
-- Overview case table contents
-- Mastering Oracle SQL and SQL*Plus
-- Lex de Haan
-- Apress, 2005
-- =================================

store set sqlplus_settings replace

set pagesize  999
set linesize  80
set feedback  off
set numwidth  6
set trimspool on

col begindate  format A11
col deptno     format 999
col empno      format 9999
col mgr        format 9999

spool contents.txt replace

prompt
prompt   EMPLOYEES:

select   *
from     employees
order by empno;

prompt
prompt   DEPARTMENTS:

select   *
from     departments
order by deptno;

prompt
prompt   SALGRADES:

select   *
from     salgrades
order by grade;

prompt
prompt   COURSES:

select   *
from     courses
order by category,code;

prompt
prompt   OFFERINGS:

select   *
from     offerings
order by begindate;

prompt
prompt   REGISTRATIONS:
break on attendee

select   *
from     registrations
order by attendee
,        begindate;

prompt
prompt   HISTORY (without COMMENTS and BEGINYEAR columns):
break on empno skip 1

select   empno
,        begindate
,        enddate
,        deptno
,        msal
from     history
order by empno
,        begindate;

spool off

@sqlplus_settings
