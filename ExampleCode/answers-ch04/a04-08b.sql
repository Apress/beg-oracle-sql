select distinct attendee             -- Wrong solution 1
from   registrations
where  attendee not in (select attendee
                        from   registrations
                        where  course = 'JAV');
