select *
from   offerings
where  begindate between date '1999-01-01'
                     and date '1999-12-31'
and    course in (select code
                  from   courses
                  where  category = 'GEN');
