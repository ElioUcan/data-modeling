select 
    b.title,
    a.name
from books b inner join authors a on a.id = b.id
order by a.name; 