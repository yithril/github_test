-- =============================================================================
-- Lab: Student Records Database
-- File: 01_create_database.sql
-- Description: Creates the StudentRecords database and Students table
-- =============================================================================

-- Step 1: Create the database
-- Creates a new database named StudentRecords for storing student information
CREATE DATABASE IF NOT EXISTS StudentRecords;

-- Select the database for use
USE StudentRecords;

-- Step 2: Create the Students table
-- Table structure designed to store student records with appropriate data types
-- Data types chosen:
--   - id: INT with AUTO_INCREMENT for unique identifiers
--   - name: VARCHAR(100) for names up to 100 characters
--   - age: INT for whole number ages
--   - grade: VARCHAR(10) for grade levels (e.g., "A", "B+", "10th")
--   - enrollment_date: DATE for storing enrollment dates without time component
CREATE TABLE Students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    grade VARCHAR(10) NOT NULL,
    enrollment_date DATE NOT NULL
);
