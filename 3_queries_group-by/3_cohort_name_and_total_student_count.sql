

SELECT cohorts.name, count(students.cohort_id) AS total_students
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.cohort_id) >= 18
ORDER BY total_students;