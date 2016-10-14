merge into master_tab m
      using delta_tab d
      on (m.pid = d.pid)
when  matched
then  update set   m.sales  = m.sales+d.sales
             ,     m.status = d.status
      delete where m.status = 'OBS'
when  not matched
then  insert values (d.pid,d.sales,'NEW');


SQL> select * from master_tab;
