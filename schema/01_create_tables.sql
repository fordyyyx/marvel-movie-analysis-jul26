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
    runtime_min                 INTEGER,
    genre                       TEXT,
    director                    TEXT,
    writer                      TEXT,
    actors                      TEXT,
    plot                        TEXT,
    language                    TEXT,
    country                     TEXT,
    awards                      TEXT,
    imdb_rating                 NUMERIC,
    imdb_votes                  INTEGER,
    rt_score                    NUMERIC,
    metacritic_score            NUMERIC,
    box_office_usd              BIGINT,
    production                  TEXT,
    mcu_phase                   TEXT,
    universe                    TEXT,
    decade                      NUMERIC,
    age_years                   NUMERIC,
    is_animated                 BOOLEAN,
    is_tv_series                BOOLEAN,
    is_mcu_canon                BOOLEAN,
    tmdb_id                     NUMERIC,
    tmdb_genres                 TEXT,
    budget_usd                  BIGINT,
    revenue_usd                 BIGINT,
    tmdb_rating                 NUMERIC,
    tmdb_votes                  NUMERIC,
    popularity                  NUMERIC,
    top5_cast                   TEXT,
    directors                   TEXT,
    producers                   TEXT,
    composer                    TEXT,
    tmdb_keywords               TEXT,
    collection_name             TEXT,
    production_countries        TEXT,
    spoken_languages            TEXT,
    episode_count               INTEGER,
    season_count                INTEGER,
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
    popularity                  NUMERIC
);

CREATE TABLE marvel_ratings (
    title                       TEXT,
    year                        NUMERIC,
    source                      TEXT,
    score                       NUMERIC
);

