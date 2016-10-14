-- ==========================================
-- SQL*Plus script: popcase.sql
-- Populates (or repopulates) the case tables
-- Mastering Oracle SQL and SQL*Plus
-- Lex de Haan
-- Apress, 2005
-- ==========================================

-- ====================================================
-- Disable PK/FK constraints (to make inserting easier)
-- ====================================================

alter table employees   disable primary key cascade;
alter table departments disable primary key cascade;

-- ========================================
-- EMPLOYEES (empno,ename,init,job,mgr
--                 ,bdate,msal,comm,deptno)
-- ========================================

truncate table employees;

insert into employees values(7369,'SMITH','N',   'TRAINER', 7902,
                             date '1965-12-17',  800 , NULL,  20);
insert into employees values(7499,'ALLEN','JAM', 'SALESREP',7698,
                             date '1961-02-20',  1600, 300,   30);
insert into employees values(7521,'WARD','TF' ,  'SALESREP',7698,
                             date '1962-02-22',  1250, 500,   30);
insert into employees values(7566,'JONES','JM',  'MANAGER', 7839,
                             date '1967-04-02',  2975, NULL,  20);
insert into employees values(7654,'MARTIN','P',  'SALESREP',7698,
                             date '1956-09-28',  1250, 1400,  30);
insert into employees values(7698,'BLAKE','R',   'MANAGER', 7839,
                             date '1963-11-01',  2850, NULL,  30);
insert into employees values(7782,'CLARK','AB',  'MANAGER', 7839,
                             date '1965-06-09',  2450, NULL,  10);
insert into employees values(7788,'SCOTT','SCJ', 'TRAINER', 7566,
                             date '1959-11-26',  3000, NULL,  20);
insert into employees values(7839,'KING','CC',   'DIRECTOR',NULL,
                             date '1952-11-17',  5000, NULL,  10);
insert into employees values(7844,'TURNER','JJ', 'SALESREP',7698,
                             date '1968-09-28',  1500, 0,     30);
insert into employees values(7876,'ADAMS','AA',  'TRAINER', 7788,
                             date '1966-12-30',  1100, NULL,  20);
insert into employees values(7900,'JONES','R',   'ADMIN',   7698,
                             date '1969-12-03',  800 , NULL,  30);
insert into employees values(7902,'FORD','MG',   'TRAINER', 7566,
                             date '1959-02-13',  3000, NULL,  20);
insert into employees values(7934,'MILLER','TJA','ADMIN',   7782,
                             date '1962-01-23',  1300, NULL,  10);

alter table employees enable primary key;

-- =======================================
-- DEPARTMENTS (deptno,dname,location,mgr)
-- =======================================

truncate table departments;

insert into departments values (10,'ACCOUNTING','NEW YORK',7782);
insert into departments values (20,'TRAINING',  'DALLAS',  7566);
insert into departments values (30,'SALES',     'CHICAGO', 7698);
insert into departments values (40,'HR',        'BOSTON',  7839);

-- =============================================
-- SALGRADES (grade,lowerlimit,upperlimit,bonus)
-- =============================================

truncate table salgrades;

insert into salgrades values (1,  700,1200,   0);
insert into salgrades values (2, 1201,1400,  50);
insert into salgrades values (3, 1401,2000, 100);
insert into salgrades values (4, 2001,3000, 200);
insert into salgrades values (5, 3001,9999, 500);

-- ========================================
-- COURSES (code,description,type,duration)
-- ========================================

alter table courses disable primary key cascade;
truncate table courses;

insert into courses values
      ('SQL','Introduction to SQL',         'GEN',4);
insert into courses values
      ('OAU','Oracle for application users','GEN',1);
insert into courses values
      ('JAV','Java for Oracle developers',  'BLD',4);
insert into courses values
      ('PLS','Introduction to PL/SQL',      'BLD',1);
insert into courses values
      ('XML','XML for Oracle developers',   'BLD',2);
insert into courses values
      ('ERM','Data modeling with ERM',      'DSG',3);
insert into courses values
      ('PMT','Process modeling techniques', 'DSG',1);
insert into courses values
      ('RSD','Relational system design',    'DSG',2);
insert into courses values
      ('PRO','Prototyping',                 'DSG',5);
insert into courses values
      ('GEN','System generation',           'DSG',4);

alter table courses enable primary key;

-- =============================================
-- OFFERINGS (course,begindate,trainer,location)
-- =============================================

alter table offerings disable primary key cascade;
truncate table offerings;

insert into offerings values ('SQL',date '1999-04-12',7902,'DALLAS' );
insert into offerings values ('OAU',date '1999-08-10',7566,'CHICAGO');
insert into offerings values ('SQL',date '1999-10-04',7369,'SEATTLE');
insert into offerings values ('SQL',date '1999-12-13',7369,'DALLAS' );
insert into offerings values ('JAV',date '1999-12-13',7566,'SEATTLE');
insert into offerings values ('XML',date '2000-02-03',7369,'DALLAS' );
insert into offerings values ('JAV',date '2000-02-01',7876,'DALLAS' );
insert into offerings values ('PLS',date '2000-09-11',7788,'DALLAS' );
insert into offerings values ('XML',date '2000-09-18',NULL,'SEATTLE');
insert into offerings values ('OAU',date '2000-09-27',7902,'DALLAS' );
insert into offerings values ('ERM',date '2001-01-15',NULL, NULL    );
insert into offerings values ('PRO',date '2001-02-19',NULL,'DALLAS' );
insert into offerings values ('RSD',date '2001-02-24',7788,'CHICAGO');

alter table offerings enable primary key;

-- ====================================================
-- REGISTRATIONS (attendee,course,begindate,evaluation)
-- ====================================================

truncate table registrations;

insert into registrations values (7499,'SQL',date '1999-04-12',4   );
insert into registrations values (7934,'SQL',date '1999-04-12',5   );
insert into registrations values (7698,'SQL',date '1999-04-12',4   );
insert into registrations values (7876,'SQL',date '1999-04-12',2   );
insert into registrations values (7788,'SQL',date '1999-10-04',NULL);
insert into registrations values (7839,'SQL',date '1999-10-04',3   );
insert into registrations values (7902,'SQL',date '1999-10-04',4   );
insert into registrations values (7902,'SQL',date '1999-12-13',NULL);
insert into registrations values (7698,'SQL',date '1999-12-13',NULL);
insert into registrations values (7521,'OAU',date '1999-08-10',4   );
insert into registrations values (7900,'OAU',date '1999-08-10',4   );
insert into registrations values (7902,'OAU',date '1999-08-10',5   );
insert into registrations values (7844,'OAU',date '2000-09-27',5   );
insert into registrations values (7499,'JAV',date '1999-12-13',2   );
insert into registrations values (7782,'JAV',date '1999-12-13',5   );
insert into registrations values (7876,'JAV',date '1999-12-13',5   );
insert into registrations values (7788,'JAV',date '1999-12-13',5   );
insert into registrations values (7839,'JAV',date '1999-12-13',4   );
insert into registrations values (7566,'JAV',date '2000-02-01',3   );
insert into registrations values (7788,'JAV',date '2000-02-01',4   );
insert into registrations values (7698,'JAV',date '2000-02-01',5   );
insert into registrations values (7900,'XML',date '2000-02-03',4   );
insert into registrations values (7499,'XML',date '2000-02-03',5   );
insert into registrations values (7566,'PLS',date '2000-09-11',NULL);
insert into registrations values (7499,'PLS',date '2000-09-11',NULL);
insert into registrations values (7876,'PLS',date '2000-09-11',NULL);

-- ================================================================
-- HISTORY (empno,beginyear,begindate,enddate,deptno,msal,comments)
-- ================================================================

alter table history disable primary key cascade;
truncate table history;

alter session  set NLS_DATE_FORMAT='DD-MM-YYYY';

insert into history values (7369,2000,'01-01-2000','01-02-2000',40, 950,'');
insert into history values (7369,2000,'01-02-2000', NULL       ,20, 800,
           'Transfer to training department -- salary "correction" 150');
--                          ================================================
insert into history values (7499,1988,'01-06-1988','01-07-1989',30,1000,'');
insert into history values (7499,1989,'01-07-1989','01-12-1993',30,1300,'');
insert into history values (7499,1993,'01-12-1993','01-10-1995',30,1500,'');
insert into history values (7499,1995,'01-10-1995','01-11-1999',30,1700,'');
insert into history values (7499,1999,'01-11-1999', NULL       ,30,1600,
           'Missed targets again; salary reduction');
--                          ================================================
insert into history values (7521,1986,'01-10-1986','01-08-1987',20,1000,'');
insert into history values (7521,1987,'01-08-1987','01-01-1989',30,1000,
           'Transfer to sales department: own request');
insert into history values (7521,1989,'01-01-1989','15-12-1992',30,1150,'');
insert into history values (7521,1992,'15-12-1992','01-10-1994',30,1250,'');
insert into history values (7521,1994,'01-10-1994','01-10-1997',20,1250,'');
insert into history values (7521,1997,'01-10-1997','01-02-2000',30,1300,'');
insert into history values (7521,2000,'01-02-2000', NULL       ,30,1250,'');
--                          ================================================
insert into history values (7566,1982,'01-01-1982','01-12-1982',20, 900,'');
insert into history values (7566,1982,'01-12-1982','15-08-1984',20, 950,'');
insert into history values (7566,1984,'15-08-1984','01-01-1986',30,1000,
           'Not a great trainer; let''s try the sales department!');
insert into history values (7566,1986,'01-01-1986','01-07-1986',30,1175,
           'Sales also turns out to be not a success...');
insert into history values (7566,1986,'01-07-1986','15-03-1987',10,1175,'');
insert into history values (7566,1987,'15-03-1987','01-04-1987',10,2200,'');
insert into history values (7566,1987,'01-04-1987','01-06-1989',10,2300,'');
insert into history values (7566,1989,'01-06-1989','01-07-1992',40,2300,
           'From accounting to human resources; 0% salary change');
insert into history values (7566,1992,'01-07-1992','01-11-1992',40,2450,'');
insert into history values (7566,1992,'01-11-1992','01-09-1994',20,2600,
           'Back to the training department, as manager');
insert into history values (7566,1994,'01-09-1994','01-03-1995',20,2550,'');
insert into history values (7566,1995,'01-03-1995','15-10-1999',20,2750,'');
insert into history values (7566,1999,'15-10-1999', NULL       ,20,2975,'');
--                          ================================================
insert into history values (7654,1999,'01-01-1999','15-10-1999',30,1100,
           'Senior sales rep; high potential?');
insert into history values (7654,1999,'15-10-1999', NULL       ,30,1250,
           'Turns out to be slightly disappointing :-( ');
--                          ================================================
insert into history values (7698,1982,'01-06-1982','01-01-1983',30, 900,'');
insert into history values (7698,1983,'01-01-1983','01-01-1984',30,1275,'');
insert into history values (7698,1984,'01-01-1984','15-04-1985',30,1500,'');
insert into history values (7698,1985,'15-04-1985','01-01-1986',30,2100,'');
insert into history values (7698,1986,'01-01-1986','15-10-1989',30,2200,'');
insert into history values (7698,1989,'15-10-1989', NULL       ,30,2850,
           'Promoted to become manager of the sales department');
--                          ================================================
insert into history values (7782,1988,'01-07-1988', NULL       ,10,2450,
           'Hired as the new manager for the accounting department');
--                          ================================================
insert into history values (7788,1982,'01-07-1982','01-01-1983',20, 900,'');
insert into history values (7788,1983,'01-01-1983','15-04-1985',20, 950,'');
insert into history values (7788,1985,'15-04-1985','01-06-1985',40, 950,
           'Transfer to human resources; 0% salary raise');
insert into history values (7788,1985,'01-06-1985','15-04-1986',40,1100,'');
insert into history values (7788,1986,'15-04-1986','01-05-1986',20,1100,'');
insert into history values (7788,1986,'01-05-1986','15-02-1987',20,1800,'');
insert into history values (7788,1987,'15-02-1987','01-12-1989',20,1250,
           'Salary reduction 550, insufficient achievements');
insert into history values (7788,1989,'01-12-1989','15-10-1992',20,1350,'');
insert into history values (7788,1992,'15-10-1992','01-01-1998',20,1400,'');
insert into history values (7788,1998,'01-01-1998','01-01-1999',20,1700,'');
insert into history values (7788,1999,'01-01-1999','01-07-1999',20,1800,'');
insert into history values (7788,1999,'01-07-1999','01-06-2000',20,1800,'');
insert into history values (7788,2000,'01-06-2000', NULL       ,20,3000,'');
--                          ================================================
insert into history values (7839,1982,'01-01-1982','01-08-1982',30,1000,
           'Founder and first employee of the company');
insert into history values (7839,1982,'01-08-1982','15-05-1984',30,1200,'');
insert into history values (7839,1984,'15-05-1984','01-01-1985',30,1500,'');
insert into history values (7839,1985,'01-01-1985','01-07-1985',30,1750,'');
insert into history values (7839,1985,'01-07-1985','01-11-1985',10,2000,
           'Accounting established as an independent department');
insert into history values (7839,1985,'01-11-1985','01-02-1986',10,2200,'');
insert into history values (7839,1986,'01-02-1986','15-06-1989',10,2500,'');
insert into history values (7839,1989,'15-06-1989','01-12-1993',10,2900,'');
insert into history values (7839,1993,'01-12-1993','01-09-1995',10,3400,'');
insert into history values (7839,1995,'01-09-1995','01-10-1997',10,4200,'');
insert into history values (7839,1997,'01-10-1997','01-10-1998',10,4500,'');
insert into history values (7839,1998,'01-10-1998','01-11-1999',10,4800,'');
insert into history values (7839,1999,'01-11-1999','15-02-2000',10,4900,'');
insert into history values (7839,2000,'15-02-2000', NULL       ,10,5000,'');
--                          ================================================
insert into history values (7844,1995,'01-05-1995','01-01-1997',30, 900,'');
insert into history values (7844,1998,'15-10-1998','01-11-1998',10,1200,
           'Project (half a month) for the ACCOUNTING department');
insert into history values (7844,1998,'01-11-1998','01-01-2000',30,1400,'');
insert into history values (7844,2000,'01-01-2000', NULL       ,30,1500,'');
--                          ================================================
insert into history values (7876,2000,'01-01-2000','01-02-2000',20, 950,'');
insert into history values (7876,2000,'01-02-2000', NULL       ,20,1100,'');
--                          ================================================
insert into history values (7900,2000,'01-07-2000', NULL       ,30, 800,
           'Junior sales rep -- has lots to learn... :-)');
--                          ================================================
insert into history values (7902,1998,'01-09-1998','01-10-1998',40,1400,'');
insert into history values (7902,1998,'01-10-1998','15-03-1999',30,1650,'');
insert into history values (7902,1999,'15-03-1999','01-01-2000',30,2500,'');
insert into history values (7902,2000,'01-01-2000','01-08-2000',30,3000,'');
insert into history values (7902,2000,'01-08-2000', NULL       ,20,3000,'');
--                          ================================================
insert into history values (7934,1998,'01-02-1998','01-05-1998',10,1275,'');
insert into history values (7934,1998,'01-05-1998','01-02-1999',10,1280,'');
insert into history values (7934,1999,'01-02-1999','01-01-2000',10,1290,'');
insert into history values (7934,2000,'01-01-2000', NULL       ,10,1300,'');

alter table history enable primary key;

-- ==============================
-- Enable foreign key constraints
-- ==============================

alter table employees     enable constraint E_PK;
alter table departments   enable constraint D_PK;

alter table employees     enable constraint E_MGR_FK;
alter table employees     enable constraint E_DEPT_FK;
alter table departments   enable constraint D_MGR_FK;
alter table offerings     enable constraint O_COURSE_FK;
alter table offerings     enable constraint O_TRAIN_FK;
alter table registrations enable constraint R_OFF_FK;
alter table registrations enable constraint R_ATT_FK;
alter table history       enable constraint H_EMPNO_FK;
alter table history       enable constraint H_DEPT_FK;

-- ===========================================
-- Collect object statistics for the optimizer
-- ===========================================

execute dbms_stats.gather_schema_stats(ownname => user, cascade => true);
