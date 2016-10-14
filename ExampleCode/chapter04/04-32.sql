select attendee
from   registrations
where  course in (select code
                  from   courses
                  where  category = 'BLD');
