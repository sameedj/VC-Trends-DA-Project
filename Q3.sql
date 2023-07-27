-- Q3: Is China really on the rise? How many investments have Chinese firms received?

SELECT
EXTRACT(YEAR FROM date) AS year,
COUNT(valuation) AS count
FROM vc.data
WHERE date BETWEEN '2007-01-01' AND '2022-09-30'
AND country = 'China'
GROUP BY 1;
