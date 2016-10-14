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
