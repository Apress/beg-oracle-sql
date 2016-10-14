update e
set    numlist = numberlist_t('1234','06-78765432','029-8765432')
where  empno = 7839;

update e
set    numlist = numberlist_t('4231','06-12345678')
where  empno = 7782;

update e
set    numlist = numberlist_t('2345')
where  empno = 7934;

update e
set    numlist = numberlist_t('','06-23456789')
where  empno = 7698;

update e
set    numlist = numberlist_t()
where  empno in (7566,7844);
