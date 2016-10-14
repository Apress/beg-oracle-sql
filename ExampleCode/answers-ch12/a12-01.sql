create or replace type salrange_t
as varray(2) of number(6,2);
/
create table salgrades2
( grade      number(2)   constraint S2_PK
                         primary key
, salrange   salrange_t  constraint S2_RANGE_NN
                         not null
, bonus      NUMBER(6,2) constraint S2_BONUS_NN
                         not null
) ;
