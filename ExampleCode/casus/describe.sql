-- =====================================
-- SQL*Plus script: describe.sql
-- Overview of all case table structures
-- Mastering Oracle SQL and SQL*Plus
-- Lex de Haan
-- Apress, 2005
-- =====================================

store set sqlplus_settings replace

set numwidth   6
set pagesize   99
set linesize   80
set sqlprompt  " "

spool describe.txt replace

prompt
prompt Overview case tables Mastering Oracle SQL
prompt =========================================

set echo on

describe EMPLOYEES
describe DEPARTMENTS
describe SALGRADES
describe COURSES
describe OFFERINGS
describe REGISTRATIONS
describe HISTORY

spool off
set echo off

@sqlplus_settings
