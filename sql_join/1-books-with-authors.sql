select 
    b.title,
    a.author_name
from books b inner join authors a on a.id = b.id
order by b.title; 