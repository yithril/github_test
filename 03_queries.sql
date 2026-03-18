-- =============================================================================
-- Lab: Student Records Database
-- File: 03_queries.sql
-- Description: SELECT queries for retrieving and filtering student data
-- Prerequisite: Run 01_create_database.sql and 02_insert_data.sql first
-- =============================================================================

USE StudentRecords;

-- =============================================================================
-- Query 1: Basic SELECT - Retrieve all columns from Students table
-- What it does: Returns every column and row in the Students table
-- Expected: All 12 student records with id, name, age, grade, enrollment_date
-- Data types: All column types (INT, VARCHAR, DATE) are returned as-is
-- =============================================================================
SELECT * FROM Students;


-- =============================================================================
-- Query 2: Filter with WHERE - Students older than 18
-- What it does: Returns only students where age > 18
-- Expected: Excludes Bob (17) and Fiona (16) - 10 rows returned
-- Challenge: Remember that BETWEEN 18 AND 25 is inclusive; > 18 excludes 18-year-olds
-- =============================================================================
SELECT * FROM Students
WHERE age > 18;


-- =============================================================================
-- Query 3: Filter with BETWEEN - Ages between 18 and 25 (inclusive)
-- What it does: Returns students whose age is 18, 19, 20, 21, 22, 23, 24, or 25
-- Expected: Excludes Bob (17), Fiona (16), and Ivy (26) - 10 rows returned
-- Verify: Check that no one under 18 or over 25 appears in results
-- =============================================================================
SELECT * FROM Students
WHERE age BETWEEN 18 AND 25;


-- =============================================================================
-- Query 4: Sort Results - ORDER BY enrollment_date DESC
-- What it does: Returns students sorted by enrollment_date, newest first
-- Expected: Fiona (2024-04-05) first, Ivy (2023-06-01) last
-- Data type: DATE type enables proper chronological sorting
-- =============================================================================
SELECT * FROM Students
WHERE age BETWEEN 18 AND 25
ORDER BY enrollment_date DESC;


-- =============================================================================
-- Query 5: Pattern Matching with LIKE - Names starting with 'A'
-- What it does: Returns students whose name begins with the letter 'A'
-- Uses: LIKE 'A%' where % is a wildcard for any characters after 'A'
-- Expected: Alice Johnson, Anna Williams, Andrew Martinez, Amy Thompson
-- Challenge: LIKE is case-sensitive in some databases; use 'A%' or 'a%' as needed
-- =============================================================================
SELECT * FROM Students
WHERE name LIKE 'A%';


-- =============================================================================
-- Data Types Reflection
-- =============================================================================
-- id (INT): Enables numeric comparisons and AUTO_INCREMENT; used in WHERE id = X
-- name (VARCHAR(100)): Supports LIKE pattern matching and string comparisons
-- age (INT): Enables numeric operators (>, <, BETWEEN) for filtering
-- grade (VARCHAR(10)): Stores letter grades; could use LIKE for grade patterns
-- enrollment_date (DATE): Enables ORDER BY chronological sorting and date comparison
