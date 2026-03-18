-- =============================================================================
-- Lab: Student Records Database
-- File: 02_insert_data.sql
-- Description: Inserts sample student data into the Students table
-- Prerequisite: Run 01_create_database.sql first
-- =============================================================================

USE StudentRecords;

-- Step 3: Insert student records
-- Inserting 12 records with a mix of ages (16-26) and grades (A through C)
-- Includes students with names starting with 'A' for LIKE query testing
-- Various enrollment dates for ORDER BY testing
INSERT INTO Students (name, age, grade, enrollment_date) VALUES
    ('Alice Johnson', 20, 'A', '2024-01-15'),
    ('Bob Smith', 17, 'B+', '2024-02-20'),
    ('Anna Williams', 22, 'A-', '2023-09-01'),
    ('Charlie Brown', 19, 'B', '2024-03-10'),
    ('David Lee', 24, 'A', '2023-08-15'),
    ('Emma Davis', 18, 'B+', '2024-01-08'),
    ('Andrew Martinez', 21, 'A-', '2023-11-22'),
    ('Fiona Garcia', 16, 'C+', '2024-04-05'),
    ('George Wilson', 25, 'A', '2023-07-12'),
    ('Amy Thompson', 23, 'B+', '2023-10-30'),
    ('Henry Clark', 19, 'B', '2024-02-28'),
    ('Ivy Anderson', 26, 'A-', '2023-06-01');
