



SELECT cohorts.name, count(assignment_submissions.assignment_id) AS total_submissions
FROM cohorts
JOIN assignment_submissions ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.cohort_id) >= 18
ORDER BY total_students;