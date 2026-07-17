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
WHERE title LIKE '%Thor%' AND revenue_usd != 0) AS thor_avg,
		(SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE title LIKE '%Doctor Strange%' AND revenue_usd != 0) AS dr_strange_avg,
		(SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE title LIKE '%Black Panther%' AND revenue_usd != 0) AS black_panther_avg,
		(SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE title LIKE '%Hulk%' AND revenue_usd != 0) AS hulk_avg,
		(SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE title LIKE '%Deadpool%' AND revenue_usd != 0) AS deadpool_avg,
		(SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE title LIKE '%Avengers%' AND revenue_usd != 0) AS avengers_avg,
		(SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE (title LIKE '%Wolverine%' OR title LIKE '%Logan%') AND revenue_usd != 0) AS wolverine_avg,
		(SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE title LIKE '%Guardians of the Galaxy%' AND revenue_usd != 0) AS gotg_avg,
		(SELECT ROUND(AVG(revenue_usd), 0)
FROM marvel_no_reviews
WHERE title LIKE '%Ant-Man%' AND revenue_usd != 0) AS ant_man_avg

FROM marvel_no_reviews
LIMIT 1;