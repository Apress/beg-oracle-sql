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
