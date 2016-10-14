insert into salgrades2
select grade
,      salrange_t(lowerlimit,upperlimit)
,      bonus
from   salgrades;

col salrange format a25
select * from salgrades2;

-- cleanup

drop table salgrades2;
drop type salrange_t;
