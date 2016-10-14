select translate('beer bucket','beer','milk') as translate
,      replace  ('beer bucket','beer','milk') as replace_1
,      replace  ('beer bucket','beer')        as replace_2
from   dual;
