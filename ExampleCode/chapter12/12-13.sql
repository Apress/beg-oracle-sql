drop view o;
drop table o;
drop type address_t force;

create type address_t as object
( street varchar2(20)
, nr     varchar2(5)
, pcode  varchar2(6)
, city   varchar2(20)
) ;
/

describe address_t

select type_name, typecode
from   user_types;

create table o
as
select course, begindate, trainer
from   offerings;

alter table o add (address address_t);

update o
set    o.address = 
       address_t('','','',
              (select initcap(x.location)
               from   offerings     x
               where  x.course    = o.course
               and    x.begindate = o.begindate)
       )
;
