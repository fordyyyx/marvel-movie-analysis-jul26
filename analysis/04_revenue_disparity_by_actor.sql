SELECT actor_name,
	   COUNT(*) AS num_movies,
	   ROUND(AVG(revenue_usd), 0) AS avg_revenue,
	   MIN(revenue_usd) AS min_revenue,
	   MAX(revenue_usd) AS max_revenue,
	   MAX(revenue_usd) - MIN(revenue_usd) AS minmax_disparity
FROM marvel_with_actors
WHERE revenue_usd != 0 AND actor_name NOT IN (SELECT actor_name FROM marvel_with_actors WHERE title = 'Avengers: Endgame')
GROUP BY actor_name
HAVING COUNT(*) >= 3
ORDER BY minmax_disparity DESC;