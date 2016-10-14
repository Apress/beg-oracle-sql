select attendee
from   registrations
where  course in
      (select course, begindate
       from   offerings
       where  location = 'CHICAGO');
