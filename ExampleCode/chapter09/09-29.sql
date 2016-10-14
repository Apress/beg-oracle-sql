SELECT     ename
      ,    job
      ,    mgr
      ,    msal
      ,    DENSE_RANK() OVER (ORDER BY msal DESC) sal_rank
FROM       employees
WHERE      (DENSE_RANK() OVER (ORDER BY msal DESC)) <= 3
ORDER BY   msal DESC;
