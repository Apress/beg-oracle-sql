create synonym e for employees;

describe e

select * from e;

select * from cat;

select synonym_name, table_owner, table_name
from   user_synonyms;

drop synonym e;
