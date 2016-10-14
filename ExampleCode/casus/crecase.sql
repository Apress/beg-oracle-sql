-- ======================================
-- SQL*Plus script: crecase.sql
-- Creates case tables (with constraints)
-- Mastering Oracle SQL and SQL*Plus
-- Lex de Haan
-- Apress, 2005
-- ======================================

-- ===============
-- EMPLOYEES table
-- ===============

create table employees
( empno      NUMBER(4)    constraint E_PK
                          primary key
                          constraint E_EMPNO_CHK
                          check (empno > 7000)
, ename      VARCHAR2(8)  constraint E_NAME_NN
                          not null
, init       VARCHAR2(5)  constraint E_INIT_NN
                          not null
, job        VARCHAR2(8)
, mgr        NUMBER(4)    constraint E_MGR_FK
                          references employees
, bdate      DATE         constraint E_BDAT_NN
                          not null
, msal       NUMBER(6,2)  constraint E_MSAL_NN
                          not null
, comm       NUMBER(6,2)
, deptno     NUMBER(2)    default 10
, constraint E_SALES_CHK  check
                          (decode(job,'SALESREP',0,1)
                           + nvl2(comm,          1,0) = 1)
) ;

-- =================
-- DEPARTMENTS table
-- =================

create table departments
( deptno NUMBER(2)     constraint D_PK
                       primary key
                       constraint D_DEPTNO_CHK
                       check (mod(deptno,10) = 0)
, dname  VARCHAR2(10)  constraint D_DNAME_NN
                       not null
                       constraint D_DNAME_UN
                       unique
                       constraint D_DNAME_CHK
                       check (dname = upper(dname))
, location VARCHAR2(8) constraint D_LOC_NN
                       not null
                       constraint D_LOC_CHK
                       check (location = upper(location))
, mgr    NUMBER(4)     constraint D_MGR_FK
                       references employees
) ;

alter table employees
add  (constraint E_DEPT_FK
      foreign key (deptno)
      references departments);

-- ===============
-- SALGRADES table
-- ===============

create table salgrades
( grade      NUMBER(2)   constraint S_PK
                         primary key
, lowerlimit NUMBER(6,2) constraint S_LOWER_NN
                         not null
                         constraint S_LOWER_CHK
                         check (lowerlimit >= 0)
, upperlimit NUMBER(6,2) constraint S_UPPER_NN
                         not null
, bonus      NUMBER(6,2) constraint S_BONUS_NN
                         not null
, constraint S_LO_UP_CHK check
                         (lowerlimit <= upperlimit)
) ;

-- =============
-- COURSES table 
-- =============

create table courses
( code        VARCHAR2(6)  constraint C_PK
                           primary key
, description VARCHAR2(30) constraint C_DESC_NN
                           not null
, category    CHAR(3)      constraint C_CAT_NN
                           not null
, duration    NUMBER(2)    constraint C_DUR_NN
                           not null
, constraint  C_CODE_CHK   check
                           (code = upper(code))
, constraint  C_CAT_CHK    check
                           (category in ('GEN','BLD','DSG'))
) ;

-- ===============
-- OFFERINGS table
-- ===============

create table offerings
( course     VARCHAR2(6)  constraint O_COURSE_NN
                          not null
                          constraint O_COURSE_FK
                          references courses
, begindate  DATE         constraint O_BEGIN_NN
                          not null
, trainer    NUMBER(4)    constraint O_TRAIN_FK
                          references employees
, location   VARCHAR2(8)
, constraint O_PK         primary key
                          (course,begindate)
) ;

-- ===================
-- REGISTRATIONS table
-- ===================

create table registrations
( attendee    NUMBER(4)   constraint R_ATT_NN
                          not null
                          constraint R_ATT_FK
                          references employees
, course      VARCHAR2(6) constraint R_COURSE_NN
                          not null
, begindate   DATE        constraint R_BEGIN_NN
                          not null
, evaluation  NUMBER(1)   constraint R_EVAL_CHK
                          check (evaluation in (1,2,3,4,5))
, constraint  R_PK        primary key
                          (attendee,course,begindate)
, constraint  R_OFF_FK    foreign key
                          (course,begindate)
                          references offerings
) ;

-- =============
-- HISTORY table
-- =============

create table history
( empno      NUMBER(4)    constraint H_EMPNO_NN
                          not null
                          constraint H_EMPNO_FK
                          references employees
                          on delete cascade
, beginyear  NUMBER(4)    constraint H_BYEAR_NN
                          not null
, begindate  DATE         constraint H_BDATE_NN
                          not null
, enddate    DATE
, deptno     NUMBER(2)    constraint H_DEPT_NN
                          not null
                          constraint H_DEPT_FK
                          references departments
, msal       NUMBER(6,2)  constraint H_MSAL_NN
                          not null
, comments   VARCHAR2(60)
, constraint H_PK         primary key
                          (empno,begindate)
, constraint H_BEG_END    check
                          (begindate < enddate)
) ;
