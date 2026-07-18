DROP TABLE IF EXISTS marvel_no_reviews;
DROP TABLE IF EXISTS marvel_with_ids;

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

CREATE TABLE marvel_with_ids AS
SELECT  title,
        year,
        type,
        rated,
        runtime_min,
        decade,
        tmdb_id,
        is_animated,
        is_tv_series,
        is_mcu_canon,
        budget_usd,
        revenue_usd,
        episode_count,
        season_count
FROM marvel_master;

WITH marvel_cast_actors AS (
SELECT  actor_name,
		CHARACTER,
		tmdb_id
FROM marvel_cast)


SELECT  mwi.title,
		mwi.YEAR,
		mwi.TYPE,
		mwi.runtime_min,
		mwi.revenue_usd,
		mca.actor_name,
		mca.character	
FROM marvel_with_ids mwi
LEFT JOIN marvel_cast_actors mca ON mwi.tmdb_id = mca.tmdb_id;
