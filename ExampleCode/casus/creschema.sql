-- ======================================
-- SQL*Plus script: creschema.sql
-- Creates the schema for all case tables
-- Mastering Oracle SQL and SQL*Plus
-- Lex de Haan
-- Apress, 2005
-- ======================================

set trimspool on
spool creschema.txt

-- connect / as sysdba

prompt Drop user BOOK ...
------ ==================
drop user book cascade;

prompt Create user BOOK ...
------ ====================
create user book
default   tablespace users
temporary tablespace temp
identified by book;

prompt Grant some system privileges ...
------ ================================
grant create session, alter session,
      unlimited tablespace,
      create table, create view,
      create materialized view,
      create procedure,
      create sequence,
      create synonym,
      create trigger,
      create type
to    book;
grant execute on dbms_lock to book;

prompt Connect to the new schema ...
------ =============================
connect book/book
set feedback off

prompt Create the case tables ...
------ ==========================
@@crecase

prompt Populate the case tables ...
------ ============================
@@popcase

prompt End of creschema procedure.
------ ===========================

spool off
set feedback on
