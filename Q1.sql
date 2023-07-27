-- Q1: The Fed raised interest rates in March 2022, with the data going back to September 2022 in the data set. Was there an Increasing/Decreasing trend in funding?

SELECT
(SELECT
ROUND(AVG(valuation), 2)
FROM vc.data
WHERE date BETWEEN '2021-07-01' AND '2022-02-30'
) AS pre_avg_hike_valuation
,
ROUND(AVG(valuation), 2) AS post_avg_hike_valuation
FROM vc.data
WHERE date BETWEEN '2022-03-01' AND '2022-09-30'
;

-- Second answer to question

SELECT
(SELECT
COUNT(valuation)
FROM vc.data
WHERE date BETWEEN '2021-07-01' AND '2022-02-30') AS pre_hike_count
,
(SELECT
COUNT(valuation)
FROM vc.data
WHERE date BETWEEN '2022-03-01' AND '2022-09-30') AS post_hike_count
,
(SELECT
COUNT(valuation)
FROM vc.data
WHERE date BETWEEN '2021-07-01' AND '2022-02-30')
-
(SELECT
COUNT(valuation)
FROM vc.data
WHERE date BETWEEN '2022-03-01' AND '2022-09-30')
AS delta
FROM vc.data
LIMIT 1
;
