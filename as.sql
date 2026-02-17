CREATE DATABASE attendance_db;
USE attendance_db;

CREATE TABLE teacher (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    full_name VARCHAR(100),
    standard VARCHAR(20),
    division VARCHAR(10)
);

-- Admin table for admin login
CREATE TABLE admin (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

-- Insert default admin credentials
INSERT INTO admin (username, password)
VALUES ('admin', 'admin123');
