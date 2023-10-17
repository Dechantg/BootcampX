

SELECT day, count(day) AS daily_total
FROM assignments
GROUP BY day
ORDER BY day;

