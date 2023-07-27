-- Q6: Other than China, which other countries have been prevalent in the start-up funding space in the past 5 years? Germany? Netherlands? India?

SELECT
country,
COUNT(country) AS count
FROM VC.data
WHERE date BETWEEN '2017-01-01' AND '2022-09-30'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
