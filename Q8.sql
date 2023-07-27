-- Q8: Do Bay Area VC firms primarily tend to invest in Tech firms? Is the trend changing?

SELECT
EXTRACT(YEAR from date) AS year_trunc,
SUM(CASE WHEN industry LIKE '%tech%' THEN 1 ELSE 0 END) AS tech_count,
SUM(CASE WHEN industry NOT LIKE '%tech%' THEN 1 ELSE 0 END) AS non_tech_count
FROM vc.data
WHERE city IN
('San Francisco',
'Palo Alto',
'Mountain View',
'San Mateo',
'San Jose',
'Hayward',
'Oakland',
'Sunnyvale',
'Santa Clara',
'Menlo Park',
'Redwood City',
'South San Francisco',
'San Carlos')
GROUP BY 1
;
