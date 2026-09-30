SELECT c.title, COUNT(r.student_id)
FROM courses c
LEFT JOIN registrations r ON c.id = r.course_id
GROUP BY c.id, c.title
ORDER BY COUNT(r.student_id) DESC, c.title ASC;
