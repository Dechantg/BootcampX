


SELECT day, count(day) AS daily_total
FROM assignments
GROUP BY day
HAVING COUNT(day) >= 10
ORDER BY day;
