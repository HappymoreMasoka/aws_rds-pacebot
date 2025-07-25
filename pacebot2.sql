create database pacebot;

use pacebot;


CREATE TABLE applications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100),
    email VARCHAR(100),
    program_applied VARCHAR(100),
    submission_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE applications;

ALTER TABLE applications ADD education VARCHAR(255);

select * from applications;
