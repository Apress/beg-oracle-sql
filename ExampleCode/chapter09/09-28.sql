SELECT     empno
      ,    begindate
      ,    enddate
      ,    msal
      ,    LAG(msal) OVER (PARTITION BY empno
                           ORDER BY begindate) prev_sal
      ,    msal - LAG(msal) OVER (PARTITION BY empno
                                  ORDER BY begindate) raise
FROM       history
ORDER BY   empno, begindate;
