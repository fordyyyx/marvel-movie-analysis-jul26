DROP TABLE IF EXISTS marvel_master;
DROP TABLE IF EXISTS marvel_cast;
DROP TABLE IF EXISTS marvel_ratings;

CREATE TABLE marvel_master (
    id                          BIGINT,
    title                       TEXT,
    year                        NUMERIC,
    imdb_id                     VARCHAR,
    type                        TEXT,
    rated                       TEXT,
    runtime_min                 TEXT,
    genre                       TEXT,
    director                    TEXT,
    writer                      TEXT,
    actors                      TEXT,
    plot                        TEXT,
    language                    TEXT,
    country                     TEXT,
    awards                      TEXT,
    imdb_rating                 TEXT,
    imdb_votes                  TEXT,
    rt_score                    TEXT,
    metacritic_score            TEXT,
    box_office_usd              TEXT,
    production                  TEXT,
    website                     TEXT,
    mcu_phase                   TEXT,
    universe                    TEXT,
    decade                      TEXT,
    age_years                   NUMERIC,
    is_animated                 BOOLEAN,
    is_tv_series                BOOLEAN,
    is_mcu_canon                BOOLEAN,
    tmdb_id                     NUMERIC,
    tmdb_genres                 TEXT,
    budget_usd                  TEXT,
    revenue_usd                 TEXT,
    tmdb_rating                 NUMERIC,
    tmdb_votes                  NUMERIC,
    popularity                  NUMERIC,
    top5_cast                   TEXT,
    directors                   TEXT,
    producers                   TEXT,
    composer                    TEXT,
    tmdb_keywords               TEXT,
    collection_name             TEXT,
    poster_url                  TEXT,
    production_countries        TEXT,
    spoken_languages            TEXT,
    episode_count               TEXT,
    season_count                TEXT,
    network                     TEXT,
    status                      TEXT,
    tagline                     TEXT
);

CREATE TABLE marvel_cast (
    title                       TEXT,
    year                        NUMERIC,
    tmdb_id                     NUMERIC,
    actor_name                  TEXT,
    character                   TEXT,
    cast_order                  INTEGER,
    actor_tmdb_id               NUMERIC,
    popularity                  NUMERIC,
    profile_path                TEXT
);

CREATE TABLE marvel_ratings (
    title                       TEXT,
    year                        NUMERIC,
    source                      TEXT,
    score                       TEXT
);

