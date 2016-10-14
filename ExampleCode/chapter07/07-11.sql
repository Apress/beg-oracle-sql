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
