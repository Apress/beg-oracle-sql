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
