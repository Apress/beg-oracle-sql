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