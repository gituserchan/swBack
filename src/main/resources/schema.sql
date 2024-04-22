CREATE TABLE IF NOT EXISTS movies (
movie_id BIGINT PRIMARY KEY,
title VARCHAR(255),
genres VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS ratings (
user_id INT,
movie_id BIGINT,
rating DOUBLE,
timestamp BIGINT,
PRIMARY KEY (user_id, movie_id),
FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE IF NOT EXISTS tags (
user_id INT,
movie_id BIGINT,
tag VARCHAR(255),
timestamp BIGINT,
PRIMARY KEY (user_id, movie_id, tag),
FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE IF NOT EXISTS links (
movie_id BIGINT PRIMARY KEY,
imdb_id VARCHAR(255),
tmdb_id VARCHAR(255),
FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);
