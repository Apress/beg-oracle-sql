select c1.errata
       multiset union
       c2.errata
       as result
from   c c1,
       c c2
where  c1.code = 'SQL'
and    c2.code = 'XML';
