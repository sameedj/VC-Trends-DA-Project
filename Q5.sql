-- Q5: Has tech still been king? Are average valuations (in $ billions) higher for tech startups?

SELECT
AVG(valuation) AS avg_tech_valuation,
(SELECT
AVG(valuation)
FROM vc.data
WHERE industry NOT LIKE '%tech%'
AND date BETWEEN '2018-01-01' AND '2022-09-30'
) AS avg_non_tech_valuation
FROM vc.data
WHERE industry LIKE '%tech%'
AND date BETWEEN '2018-01-01' AND '2022-09-30';
