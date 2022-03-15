-- Hard: Make a copy of your Medium Challenge 
-- Write out the queries that would add the director’s 
-- First Name and Last Name into two separate columns. 
-- Create a query that puts the names together. 
-- Create a query to put the list in alphabetical order by the last name from A-Z 
-- After you order the list, 
-- remove the Movies where the Last Name ends with ”R-Z” 
-- Write a query where the first three appear

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

ALTER TABLE top_movies
ADD first_name VARCHAR(100)
ADD last_name VARCHAR(100);

UPDATE top_movies
SET first_name = "Steven"
SET last_name = "Soto"
WHERE title = "Project X";

SELECT * FROM top_movies
CONCAT(first_name, last_name) AS director_name;

SELECT * FROM top_movies
ORDER BY last_name ASC;

DROP FROM top_movies
WHERE last_name BETWEEN "R" AND "Z";

SELECT * FROM top_movies
ORDER BY last_name ASC LIMIT 3;