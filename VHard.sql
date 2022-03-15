-- Copy the table from your Very Easy Challenge 
-- Write a query to add in three cars at once 
-- Write a query to add in prices and colors for each of these cars 
-- Write a query to put the Make and Model together in one column 
-- Create a new query that adds an additional column to the results to show how many cars have the same Make.

USE cars;

CREATE TABLE top_3_cars (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
    make VARCHAR(45),
    model VARCHAR(45),
    year YEAR
);

INSERT INTO top_3_cars (name, make, model, year)
 VALUE ('Pearl', 'Hyundai', 'Sonata','2014'), ('Fierce', 'Genesis', 'GV80','2022'), ('Rocket', 'Toyota', 'Supra','2022');

SELECT * FROM top_3_cars;

INSERT INTO top_3_cars (name, make, model, year)
 VALUE ('Telly', 'Kia', 'Telluride','2021'), ('Uff', 'Audi', 'Q8','2022'); 
 
 SHOW TABLES;

 ALTER TABLE top_3_cars
 ADD color VARCHAR(100),
 ADD PRICES INT NOT NULL;

 UPDATE top_3_cars
 SET color = "black"
 SET price = 60,000
 WHERE make = 'Hyundai' and model = 'Elantra';

 SELECT * FROM top_3_cars,
 CONCAT(make, model AS make_and_model);

 SELECT * FROM top_3_cars
ORDER BY make ASC;