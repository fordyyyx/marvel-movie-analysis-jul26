SELECT (SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE title LIKE '%Spider-Man%' AND revenue_usd != 0) AS spider_man_avg,
		(SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE title LIKE '%Iron Man%' AND revenue_usd != 0) AS iron_man_avg,
		(SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE title LIKE '%Captain America%' AND revenue_usd != 0) AS captain_america_avg,
		(SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE title LIKE '%Thor%' AND revenue_usd != 0) AS thor_avg
FROM marvel_no_reviews
LIMIT 1;