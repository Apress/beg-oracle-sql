create or replace function emp_count(p_deptno in number)
return number is
       cnt number(2) := 0;
begin
       select count(*)  into cnt
       from   employees e
       where  e.deptno = p_deptno;
       return (cnt);
end;
/
