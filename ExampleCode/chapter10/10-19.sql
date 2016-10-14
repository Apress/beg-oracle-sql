update ( select e.msal
         from   employees   e join
                departments d using (deptno)
         where  location = 'DALLAS')
set msal = msal + 1;

rollback;
