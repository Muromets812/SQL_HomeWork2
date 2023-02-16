
CREATE TABLE IF NOT EXISTS music_genres (
	genre_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS musicians (
	musician_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS alboms (
	albom_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year INT NOT NULL
);

CREATE TABLE IF NOT EXISTS treks (
	trek_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	albom_id VARCHAR(40) NOT NULL REFERENCES alboms(albom_id),
	time INT NOT NULL
);

CREATE TABLE IF NOT EXISTS collections (
	collection_id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	year INT NOT NULL
);

CREATE TABLE IF NOT EXISTS genres_musicians (
	id SERIAL PRIMARY KEY,
	genre_id INT NOT NULL REFERENCES music_genres(genre_id),
	musician_id INT NOT NULL REFERENCES musicians(musician_id)
);

CREATE TABLE IF NOT EXISTS musicians_alboms (
	id SERIAL PRIMARY KEY,
	musician_id INT NOT NULL REFERENCES musicians(musician_id),
	albom_id INT NOT NULL REFERENCES alboms(albom_id)
);

CREATE TABLE IF NOT EXISTS collection_trek (
	id SERIAL PRIMARY KEY,
	collection_id INT NOT NULL REFERENCES collections(collection_id),
	trak_id INT NOT NULL REFERENCES treks(trek_id)
);

