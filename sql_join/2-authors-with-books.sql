SELECT a.name, b.book FROM books b
LEFT JOIN authors a ON b.author_id = a.id;