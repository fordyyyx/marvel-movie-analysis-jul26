WITH ranked_movies_by_decade AS (
SELECT  title,
		revenue_usd,
		decade,
		DENSE_RANK() OVER(PARTITION BY decade ORDER BY revenue_usd DESC) AS decade_rank
FROM marvel_no_reviews
WHERE type = 'movie' AND revenue_usd != 0 AND decade > 1990
ORDER BY decade_rank
)

SELECT * 
FROM ranked_movies_by_decade
WHERE decade_rank <= 3
ORDER BY decade_rank,
		 revenue_usd DESC;
