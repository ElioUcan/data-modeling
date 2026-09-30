SELECT a.name, b.title FROM books b
LEFT JOIN authors a ON b.author_id = a.id;