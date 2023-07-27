-- Q9: Which year saw the most VC activity?

SELECT
EXTRACT(YEAR from date) AS year,
COUNT(valuation) AS count
FROM vc.data
GROUP BY 1
;
