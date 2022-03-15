-- Easy: Create a table with your top five favorite books 
-- with Title, Publish Date, and
-- Author First/Last Name 
-- Create a query to add in two new books 
-- Remove the oldest book Provide an additional 
-- query giving the sum of all books


CREATE DATABASE books;

USE books;

CREATE TABLE book_type(
	id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    published_date DATE,
    author_first_name VARCHAR(45),
    author_last_name VARCHAR(45)
);

INSERT INTO book_type (title, published_date, author_first_name, author_last_name )
 VALUE ('How to win friends and influence people', '1936-10-18', 'Dale','Carnegie'), 
('Never eat alone', '2005-01-01', 'Keith','Ferrazzi'), 
('The Laws of Human Nature', '1998-01-01', 'Robert','Greene'),
('The 48 Laws of Power', '2018-10-16', 'Robert','Greene'),
('So Good They Cant Ignore You', '2012-09-18', 'Cal','Newport')
;


DELETE FROM book_type WHERE book_id=1;

SHOW TABLES;

SELECT * FROM book_type;

ALTER TABLE book_type ADD COLUMN total INT;

SELECT SUM(total) FROM book_type