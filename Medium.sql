-- Medium: Create a table with your top 10 movies. 
-- Include title, release date, and rating 
-- Create a query that pulls all movies, 
-- in order of release date, 
-- where the title includes the letter “s”.

CREATE DATABASE top_10_movies;

USE top_10_movies;

SELECT * FROM top_10_movies.top_movies;


CREATE TABLE top_movies (
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR (255),
release_date INT NOT NULL,
rating INT NOT NULL,
PRIMARY KEY (id)
);

SELECT * FROM top_10_movies.top_movies
ORDER BY release_date;

SELECT * FROM top_10_movies.top_movies
WHERE title = 'S';

INSERT INTO top_movies (title, release_date, rating) 
VALUES
('I am Legend', 2010, 5),
('Jacka**', 2022, 4),
('Batman',2022, 3),
('Superbad',2007, 5),
('Project X',2012, 5)


