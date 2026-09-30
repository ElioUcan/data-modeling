SELECT a.name, b.title FROM author a
LEFT JOIN books b ON b.author_id = a.id;