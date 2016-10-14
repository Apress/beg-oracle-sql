select trainer  from offerings
where  trainer  is not null
minus
select attendee from registrations;

set feedback 10
