-- Which year saw the most investments? Has it to do something with the economic outlook/situation? What was the era with the least amount of investment activity other than the financial crisis era?

SELECT
EXTRACT(YEAR from date) AS year,
COUNT(valuation) AS count
FROM vc.data
GROUP BY 1;
