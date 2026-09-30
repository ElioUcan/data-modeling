SELECT a.name, b.title FROM authors a
LEFT JOIN books b ON b.author_id = a.id;