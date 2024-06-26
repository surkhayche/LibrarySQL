CREATE DATABASE BookLibrary
USE BookLibrary
CREATE TABLE Authors 
(
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    Surname VARCHAR(100)
);
INSERT INTO Authors (Id, Name, Surname) 
VALUES
(1, 'Cek', 'London'),
(2, 'Viktor', 'Hugo'),
(3, 'Aleksandr', 'Duma');
SELECT * FROM Authors
CREATE TABLE Books (
    Id INT PRIMARY KEY,
    Name VARCHAR(100),
    AuthorId INT,
    PageCount INT,
    CostPrice DECIMAL(18, 2),
    SalePrice DECIMAL(18, 2),
    FOREIGN KEY (AuthorId) REFERENCES Authors(Id)
);
SELECT * FROM Books
INSERT INTO Books (Id, Name, AuthorId, PageCount, CostPrice, SalePrice) 
VALUES
(1, 'White Fang', 1, 320, 15.60, 19.99),
(2, 'LES MİSERABLES', 2, 250, 10.80, 18.99),
(3, '3 Musketeers', 3, 150, 9.99, 15.50);
SELECT * FROM Books
CREATE TABLE Tags (
    Id INT PRIMARY KEY,
    Name VARCHAR(50)
);
SELECT * FROM Tags
INSERT INTO Tags (Id, Name) 
VALUES
(1, 'BestSeller'),
(2, 'Featured'),
(3, 'New');
SELECT * FROM Tags
CREATE TABLE BooksTags (
    BookId INT,
    TagId INT,
    PRIMARY KEY (BookId, TagId),
    FOREIGN KEY (BookId) REFERENCES Books(Id),
    FOREIGN KEY (TagId) REFERENCES Tags(Id)
);
SELECT * FROM Tags
INSERT INTO BooksTags (BookId, TagId) 
VALUES
(1, 1), 
(2, 2), 
(3, 3); 




