SELECT s.name as student_name, c.title as course_title FROM students s INNER JOIN enrollments e ON e.student_id = s.id
INNER JOIN courses c ON c.id = e.course_id ORDER BY s.name ASC c.title ASC; 