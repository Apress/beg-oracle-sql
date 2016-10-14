create index year_sal_idx
on employees (12*msal + coalesce(comm,0));
