SELECT c.title
FROM courses c
JOIN assignments a ON c.id = a.course_id
GROUP BY c.title
HAVING COUNT(*) > (
    SELECT AVG(assignment_count)
    FROM (
        SELECT COUNT(*) AS assignment_count
        FROM assignments
        GROUP BY course_id
    ) AS subquery
)
ORDER BY c.title ASC;
