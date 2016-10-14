select attendee
from   registrations
where  course   = 'JAV'
and    attendee in (select attendee
                    from   registrations
                    where  course = 'XML');
