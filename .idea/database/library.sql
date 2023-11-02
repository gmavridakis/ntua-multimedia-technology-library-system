-- Drop the "library" database if it exists
DROP DATABASE IF EXISTS library;

-- Create the "library" database
CREATE DATABASE library;

-- Switch to the "library" database
USE library;

-- Create the students table
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(255),
    sname VARCHAR(255),
    regno VARCHAR(255),
    year INT,
    faculty VARCHAR(255),
    department VARCHAR(255),
    email VARCHAR(255),
    noIssued INT
);

-- Create the books table
CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    booktitle VARCHAR(255),
    bookid INT,
    price DECIMAL(10, 2),
    categ VARCHAR(255),
    publishers VARCHAR(255),
    edition INT
);

-- Create the issued table
CREATE TABLE issued (
    id INT AUTO_INCREMENT PRIMARY KEY,
    names VARCHAR(255),
    regno VARCHAR(255),
    yearOfStudy INT,
    faculty VARCHAR(255),
    department VARCHAR(255),
    email VARCHAR(255),
    dateIssued DATE,
    bookId INT,
    booktitle VARCHAR(255),
    price DECIMAL(10, 2),
    category VARCHAR(255),
    publishers VARCHAR(255),
    edition INT
);

-- Create the admins table
CREATE TABLE admins (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(255),
    secondname VARCHAR(255),
    regno VARCHAR(255),
    username VARCHAR(255),
    password VARCHAR(255),
    security VARCHAR(255),
    answer VARCHAR(255)
);

-- Create the returned table
CREATE TABLE returned (
    id INT AUTO_INCREMENT PRIMARY KEY,
    booktitle VARCHAR(255),
    bookid INT,
    price DECIMAL(10, 2),
    category VARCHAR(255),
    publishers VARCHAR(255),
    edition INT,
    regno VARCHAR(255),
    name VARCHAR(255),
    yearOfStudy INT,
    faculty VARCHAR(255),
    department VARCHAR(255),
    email VARCHAR(255),
    dateIssued DATE,
    dateReturned DATE
);


-- Insert data into the admins table
INSERT INTO admins (firstname, secondname, regno, username, password, security, answer)
VALUES ('admin', 'admin', 'admin', 'admin', 'admin', 'Question 1', 'Answer 1');
INSERT INTO admins (firstname, secondname, regno, username, password, security, answer)
VALUES ('Default', 'Default', 'default_admin', 'medialab', 'medialab_2024', 'Question 1', 'Answer 1');


-- Insert data into the students table
INSERT INTO students (fname, sname, regno, year, faculty, department, email, noIssued)
VALUES ('John', 'Doe', '12345', 2023, 'Science', 'Physics', 'john.doe@example.com', 0);
INSERT INTO students (fname, sname, regno, year, faculty, department, email, noIssued)
VALUES ('Jane', 'Smith', '67890', 2022, 'Arts', 'English', 'jane.smith@example.com', 2);
INSERT INTO students (fname, sname, regno, year, faculty, department, email, noIssued)
VALUES ('Alice', 'Johnson', '55555', 2021, 'Engineering', 'Mechanical', 'alice.johnson@example.com', 3);
INSERT INTO students (fname, sname, regno, year, faculty, department, email, noIssued)
VALUES ('Bob', 'Wilson', '77777', 2022, 'Business', 'Finance', 'bob.wilson@example.com', 1);
INSERT INTO students (fname, sname, regno, year, faculty, department, email, noIssued)
VALUES ('Eva', 'Brown', '99999', 2021, 'Science', 'Chemistry', 'eva.brown@example.com', 4);

-- Insert data into the books table
INSERT INTO books (booktitle, bookid, price, categ, publishers, edition)
VALUES ('Introduction to MySQL', 1234, 29.99, 'Technology', 'TechBooks Inc.', 1);
INSERT INTO books (booktitle, bookid, price, categ, publishers, edition)
VALUES ('The Great Gatsby', 2345, 12.99, 'Fiction', 'Penguin Books', 2);
INSERT INTO books (booktitle, bookid, price, categ, publishers, edition)
VALUES ('Data Structures and Algorithms', 3456, 34.99, 'Technology', 'Coding Publications', 3);
INSERT INTO books (booktitle, bookid, price, categ, publishers, edition)
VALUES ('Macbeth', 3456, 9.99, 'Drama', 'Shakespeare Publishing', 1);
INSERT INTO books (booktitle, bookid, price, categ, publishers, edition)
VALUES ('Economics 101', 4567, 22.99, 'Business', 'EconBooks Inc.', 1);


-- Insert data into the issued table
INSERT INTO issued (names, regno, yearOfStudy, faculty, department, email, dateIssued, bookId, booktitle, price, category, publishers, edition)
VALUES ('John Doe', '12345', 2023, 'Science', 'Physics', 'john.doe@example.com', '2023-11-01', 1234, 'Introduction to MySQL', 29.99, 'Technology', 'TechBooks Inc.', 1);


-- Insert data into the returned table
INSERT INTO returned (booktitle, bookid, price, category, publishers, edition, regno, name, yearOfStudy, faculty, department, email, dateIssued, dateReturned)
VALUES ('Introduction to MySQL', 1234, 29.99, 'Technology', 'TechBooks Inc.', 1, '12345', 'John Doe', 2023, 'Science', 'Physics', 'john.doe@example.com', '2023-11-01', '2023-11-15');


-- Select all students
SELECT * FROM students;

-- Select all books
SELECT * FROM books;

-- Select all issued books
SELECT * FROM issued;

-- Select all admins
SELECT * FROM admins;

-- Select all returned books
SELECT * FROM returned;
