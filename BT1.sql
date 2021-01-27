CREATE DATABASE `ManagerLibrary`;

USE `ManagerLibrary`;

CREATE TABLE `Student`(
`student_id` INT AUTO_INCREMENT PRIMARY KEY,
`stusent_name` VARCHAR(50) NOT NULL,
`address` VARCHAR(500)NOT NULL,
`email` VARCHAR(50) NOT NULL,
`image` LONGBLOB NOT NULL);