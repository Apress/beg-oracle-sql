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
