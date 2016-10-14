select object_name, object_type
from   obj
where  object_type in ('TABLE','VIEW')
order  by object_type, object_name;
