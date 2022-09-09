-- Allows resetting the database.
DROP DATABASE IF EXISTS netflix;
DROP USER IF EXISTS netflixuser;

CREATE DATABASE netflix;
CREATE USER netflixuser WITH PASSWORD 'netflix';
GRANT ALL PRIVILEGES ON DATABASE netflix TO netflixuser;