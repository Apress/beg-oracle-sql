create or replace function ext
     (p_varray_in numberlist_t)
return varchar2
is
  v_ext varchar2(20);
begin
  v_ext := p_varray_in(1);
  return v_ext;
end;
/

col ext(numlist) format a12

select ename, init, ext(numlist)
from   e
where  deptno = 10;
