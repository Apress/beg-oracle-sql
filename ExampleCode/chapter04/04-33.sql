select attendee
from   registrations
where  evaluation in (select duration
                      from   courses
                      where  category = 'BLD');
