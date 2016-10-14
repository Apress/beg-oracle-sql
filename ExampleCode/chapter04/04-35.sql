select attendee
from   registrations
where (course, begindate) in
      (select course, begindate
       from   offerings
       where  location = 'CHICAGO');
