SELECT     empno
      ,    begindate
      ,    enddate
      ,    msal
      ,    LAG(msal) OVER (PARTITION BY empno
                           ORDER BY begindate) prev_sal
FROM       history
ORDER BY   empno, begindate;
