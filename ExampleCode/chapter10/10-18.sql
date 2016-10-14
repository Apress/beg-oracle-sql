create or replace view reg_view as
select r.*
from   registrations r
where  r.attendee   in (select empno
                        from   employees)
and    r.course     in (select code
                        from   courses)
and    r.evaluation in (1,2,3,4,5)
with check option;

select constraint_name, table_name
from   user_constraints
where  constraint_type = 'V';
