drop type numberlist_t force;

create or replace type numberlist_t
as varray(4) of varchar2(20);
/

describe numberlist_t

select type_name, typecode
from   user_types;
