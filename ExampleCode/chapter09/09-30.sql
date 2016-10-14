WITH ranked_salaries AS
( SELECT     ename
        ,    job
        ,    mgr
        ,    msal
        ,    DENSE_RANK() OVER (ORDER BY msal DESC) sal_rank
  FROM       employees
 )
SELECT     ename
      ,    job
      ,    mgr
      ,    msal
      ,    sal_rank
FROM       ranked_salaries
WHERE      sal_rank <= 3
ORDER BY   msal DESC;
