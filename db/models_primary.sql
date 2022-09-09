DROP TABLE IF EXISTS show, country, language, genre, tag, person;

CREATE TABLE show(
  show_id SERIAL PRIMARY KEY,
  show_title TEXT NOT NULL,
  show_type TEXT NOT NULL,
  show_genres TEXT,
  show_tags TEXT,
  show_languages TEXT,
  show_country_availability TEXT,
  show_directors TEXT,
  show_writers TEXT,
  show_actors TEXT,
  show_production_house TEXT DEFAULT NULL,
  show_view_rating TEXT DEFAULT NULL,
  show_summary TEXT DEFAULT NULL,
  show_release_date DATE DEFAULT NULL,
  show_netflix_release_date DATE DEFAULT NULL,
  show_hidden_gem_score NUMERIC DEFAULT 0,
  show_imdb_score NUMERIC DEFAULT 0, 
  show_rotten_tomatoes_score NUMERIC DEFAULT 0,
  show_metacritic_score NUMERIC DEFAULT 0,
  show_nominations_received SMALLINT DEFAULT 0,
  show_awards_received SMALLINT DEFAULT 0,
  show_boxoffice MONEY DEFAULT NULL,
  show_trailer_link TEXT DEFAULT NULL,
  show_netflix_link TEXT DEFAULT NULL,
  show_imdb_link TEXT DEFAULT NULL,
  show_image TEXT DEFAULT NULL,
  show_poster TEXT DEFAULT NULL
);

CREATE TABLE genre(
  genre_id SERIAL PRIMARY KEY,
  genre_name VARCHAR(255) NOT NULL
);

CREATE TABLE tag(
  tag_id SERIAL PRIMARY KEY,
  tag_name VARCHAR(255) NOT NULL
);

CREATE TABLE language(
  language_id SERIAL PRIMARY KEY,
  language_name VARCHAR(255) NOT NULL
);

CREATE TABLE country(
  country_id SERIAL PRIMARY KEY,
  country_name VARCHAR(255) NOT NULL
);

CREATE TABLE person(
  person_id SERIAL PRIMARY KEY,
  person_name VARCHAR(255) NOT NULL
);