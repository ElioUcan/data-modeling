select 
    b.title,
    a.name
from books b inner join authors a on a.id = b.author_id
order by b.title; 