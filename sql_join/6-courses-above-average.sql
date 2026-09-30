SELECT c.title AS course_title
FROM courses c
JOIN enrollments e ON c.id = e.course_id
GROUP BY c.title
HAVING COUNT(*) > (
    SELECT AVG(enrollment_count)
    FROM (
        SELECT COUNT(*) AS enrollment_count
        FROM enrollments
        GROUP BY course_id
    ) AS subquery
)
ORDER BY course_title ASC;
