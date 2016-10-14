declare
  i number;
  j number;
begin
  for i in 2..9 loop
    insert into testnest (x, mx)
                  values (i, mx_tab_t());   
    for j in 1..20 loop
      exit when i*j > 20;
      insert into table (select mx from testnest where x=i)
                 values (i*j);
    end loop;
  end loop;
end;
/
