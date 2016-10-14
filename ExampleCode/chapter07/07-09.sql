create table courses
( code        VARCHAR2(6)  constraint C_PK
                           primary key
, description VARCHAR2(30) constraint C_DESC_NN
                           not null
, category    CHAR(3)      constraint C_TYPE_NN
                           not null
, duration    NUMBER(2)    constraint C_DUR_NN
                           not null
, constraint  C_CODE_CHK   check
                           (code = upper(code))
, constraint  C_TYPE_CHK   check
                           (category in ('GEN','BLD','DSG'))
) ;
