DROP TABLE IF EXISTS marvel_no_reviews;

CREATE TABLE marvel_no_reviews AS 
SELECT 	title,
		year,
        type,
		rated,
		runtime_min,
		genre,
		director,
		writer,
		actors,
		language,
		country,
		box_office_usd,
		mcu_phase,
		universe,
        decade,
		is_animated,
		is_tv_series,
		is_mcu_canon,
		budget_usd,
		revenue_usd,
		episode_count,
		season_count
FROM marvel_master;