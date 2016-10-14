select *
from salgrades;

delete from (select *
             from   salgrades
             where  grade = 5);

select *
from salgrades;

rollback;