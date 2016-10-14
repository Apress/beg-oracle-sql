-- ========================================
-- SQL*Plus script: dropcase.sql
-- Drops all case tables (with constraints)
-- without dropping the schema
-- Mastering Oracle SQL and SQL*Plus
-- Lex de Haan
-- Apress, 2005
-- ========================================

drop table employees     cascade constraints;
drop table departments   cascade constraints;
drop table salgrades     cascade constraints;
drop table courses       cascade constraints;
drop table offerings     cascade constraints;
drop table registrations cascade constraints;
drop table history       cascade constraints;
