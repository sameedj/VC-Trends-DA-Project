-- Q10: What are the most common invested industries in the data set?

SELECT industry,
COUNT(industry) AS count
FROM vc.data
GROUP BY 1
ORDER BY 2 DESC;
