-- Q2: Was San Francisco Bay Area still the hub for VC over time? Were there any changes in terms of geography (i.e. new cities) for investments throughout the US during COVID and before?

SELECT
city,
COUNT(valuation) AS count
FROM vc.data
WHERE country = 'United States'
AND date BETWEEN '2019-12-01' AND '2022-09-30'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;

-- Second answer to question

SELECT
city,
COUNT(valuation)
FROM vc.data
WHERE country = 'United States'
AND date BETWEEN '2016-01-01' AND '2019-11-30'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5;
