col substr2 format a7
select dname
,      substr(dname,4)      as substr1
,      substr(dname,4,3)    as substr2
,      instr(dname,'I')     as instr1
,      instr(dname,'I',5)   as instr2
,      instr(dname,'I',3,2) as instr3
from   departments;
