CREATE DATABASE attendance_db;
USE attendance_db;

CREATE TABLE teacher (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    full_name VARCHAR(100),
    subject VARCHAR(50),
    standard VARCHAR(20),
    division VARCHAR(10)
);



CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);


INSERT INTO admin (username, password)
VALUES ('admin', 'admin123');


CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    roll INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    standard VARCHAR(20) NOT NULL,
    division VARCHAR(10) NOT NULL
);


CREATE TABLE attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    date DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    standard VARCHAR(20) NOT NULL,
    division VARCHAR(10) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(id)
);
