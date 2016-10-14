select table_name
,      constraint_name
,      status
,      r_constraint_name as references
from   user_constraints
where  constraint_type = 'R';
