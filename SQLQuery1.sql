CREATE DATABASE Demo;

USE Demo;
CREATE TABLE Users (
    Id INT,
    Name NVARCHAR(MAX),
    Surname NVARCHAR(MAX),
    Email NVARCHAR(MAX),
    ContactNumber NVARCHAR(MAX),
    Age INT,
    Address NVARCHAR(MAX)
);

INSERT INTO Users (Id, Name, Surname, Email, ContactNumber, Age, Address)
VALUES 
    (1, 'Ryan', 'Gosling', 'ryan@gmail.com', '123456789', 25, 'LosAngeles'),
    (2, 'Jack', 'Gyllenhaal', 'jack@gmail.com', '987654321', 30, 'Hollywood'),
    (3, 'Keanu', 'Reeves', 'keanu@gmail.com', '555555555', 22, 'NewYork');

CREATE TABLE Categories (
    Id INT,
    Name NVARCHAR(MAX),
    Slug NVARCHAR(MAX),
    CreatedAt DATETIME,
    IsActive BIT
);

INSERT INTO Categories (Id, Name, Slug, CreatedAt, IsActive)
VALUES 
    (1, 'Category1', 'category1', GETDATE(), 1),
    (2, 'Category2', 'category2', GETDATE(), 0),
    (3, 'Category3', 'category3', GETDATE(), 1);

SELECT Name, Surname, Email FROM Users;

SELECT Name, IsActive FROM Categories;