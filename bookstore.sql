-- Show DB --
SHOW DATABASES;

-- Create DB --
CREATE DATABASE bookstore;

-- Use DB --
USE bookstore;

-- SHOW Table --
SHOW TABLES;

-- CREATE TABLE --
CREATE TABLE books(
  id INT AUTO_INCREMENT PRIMARY KEY,
  author1 VARCHAR(100) NOT NULL,
  author2 VARCHAR(100),
  author3 VARCHAR(100),
  title VARCHAR(100),
  description TEXT,
  place_sell CHAR(3),
  stock INT DEFAULT 0,
  creation_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- UPDATE COLUMN --
ALTER TABLE books
ADD price INT DEFAULT 0,
ADD status ENUM('available', 'out of stock', 'limited'),
DROP COLUMN place_sell;

-- INSERT DATA --
INSERT INTO books VALUES
('', 'Agatha Christie', '', '', 'The Secret of Chimneys', 'The Secret of Chimneys is a work of detective fiction by Agatha Christie, first published June 1925.', 100, DEFAULT, 113000, 'available'),
('', 'Paulo', '', '', 'The Alchemist', 'The Alchemist tells the magical story of Santiago, an Andalusian shepherd boy who yearns to travel in search of a worldly treasure as extravagant as any ever found.', '', '2016-09-16', 100000, 'out of stock'),
('', 'James Patterson', 'JD Baker', '', 'The Noise is a sci-fi thriller which begins at a survivalist settlement in the Pacific Northwest.', 100, DEFAULT, 180000, 'available');


-- SELECT BOOKS --
SELECT * FROM books;

-- SELECT ALIAS --
SELECT id AS ID, author1 AS A1, author2 AS A2, author3 AS A3 FROM books;

-- SELECT WITH COMMON ID --
SELECT * FROM books WHERE id = 2;

-- SELECT WITH AND --
SELECT * FROM books WHERE price > 100000 AND price <= 200000;

-- SELECT WITH OR --
SELECT * FROM books WHERE status = 'limited' OR status = 'out of stock';

-- SELECT WITH NOT --
SELECT * FROM books WHERE author2 != 'JD Baker';

-- ORDER BY --
SELECT * FROM books ORDER BY id ASC;

-- LIMIT --
SELECT * FROM books LIMIT 2;

-- UPDATE DATA --
UPDATE books SET author1 = 'Paulo Coelho', price = 145000 WHERE id = 2;

-- DELETE DATA --
DELETE FROM books WHERE id = 3;
