-- Very Easy: Create a table with your top three cars 
-- and include make, model, year. 
-- Create a query to add in two more cars

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