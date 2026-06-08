-- Check if all records were imported correctly

SELECT COUNT(*) AS total_rows
FROM superstore_clean;

-- Preview the first 10 rows of the dataset

SELECT *
FROM superstore_clean
LIMIT 10;
