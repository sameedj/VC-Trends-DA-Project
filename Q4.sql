-- Has there been a shift away from tech startup investing in recent years compared to the early 2010s?

SELECT
(SELECT
SUM(CASE WHEN industry LIKE '%tech%' THEN 1 ELSE NULL END)
FROM vc.data
WHERE date BETWEEN '2010-01-01' AND '2015-12-31') AS pre_tech
,
(SELECT
SUM(CASE WHEN industry NOT LIKE '%tech%' THEN 1 ELSE NULL END)
FROM vc.data
WHERE date BETWEEN '2010-01-01' AND '2015-12-31') AS pre_non_tech
,
SUM(CASE WHEN industry LIKE '%tech%' THEN 1 ELSE NULL END) AS tech
,
SUM(CASE WHEN industry NOT LIKE '%tech%' THEN 1 ELSE NULL END) AS non_tech
FROM vc.data
WHERE date BETWEEN '2019-01-01' AND '2022-08-31'
;
