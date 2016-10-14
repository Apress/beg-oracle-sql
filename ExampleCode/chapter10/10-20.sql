select *
from   avg_evaluations
where  avg_eval >= 4;

select r.course
,      avg(r.evaluation) as avg_eval
from   registrations r
group  by r.course
having avg(r.evaluation) >= 4;
