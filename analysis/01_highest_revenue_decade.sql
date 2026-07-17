SELECT	decade,
		ROUND(AVG(revenue_usd), 0) AS average_revenue_usd,
		COUNT(*) AS total_movies
FROM marvel_no_reviews
WHERE type = 'movie' AND revenue_usd != 0
GROUP BY decade
ORDER BY average_revenue_usd DESC;