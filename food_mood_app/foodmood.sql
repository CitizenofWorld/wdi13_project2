CREATE DATABASE foodmoods;







CREATE TABLE moods (
	id SERIAL4 PRIMARY KEY,
	colors VARCHAR(400),
	moods VARCHAR(200)
);

CREATE TABLE recipes (
	id SERIAL4 PRIMARY KEY,
	image_url VARCHAR(400),
	recipe_url VARCHAR(200),
	FOREIGN KEY (mood_id) REFERENCES moods (id)
);

CREATE TABLE likes (
	id SERIAL4 PRIMARY KEY,
	email VARCHAR(200),
	FOREIGN KEY (user_id) REFERENCES users (id),
	FOREIGN KEY (recipe_id) REFERENCES recipes (id)
);

CREATE TABLE users (
id SERIAL4 PRIMARY KEY,
name VARCHAR(200),
email VARCHAR(200)
);