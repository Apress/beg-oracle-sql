select column_name
,      updatable, insertable, deletable
from   user_updatable_columns
where  table_name = 'CRS_OFFERINGS';
