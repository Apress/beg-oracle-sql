select 'ALTER TABLE '||table_name
       ||' DISABLE CONSTRAINT '||constraint_name
       ||' ;'
from   user_constraints;
