SELECT s.name, c.title
FROM students s
JOIN registrations r ON s.id = r.student_id
JOIN courses c ON r.course_id = c.id
ORDER BY s.name ASC, c.title ASC;
