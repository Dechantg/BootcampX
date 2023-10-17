

SELECT students.name, AVG(assignment_submissions.duration) AS student_average_duration, AVG(assignments.duration) AS expected_average_duration
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN assignments ON assignment_submissions.assignment_id = assignments.id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY student_average_duration;
