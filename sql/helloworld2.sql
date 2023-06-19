-- hello_world_complex.sql

-- This is a comment. Comments start with '--' in SQL.

WITH hello_chars AS (
  SELECT 'H' AS char
  UNION ALL
  SELECT 'e' AS char
  UNION ALL
  SELECT 'l' AS char
  UNION ALL
  SELECT 'l' AS char
  UNION ALL
  SELECT 'o' AS char
  UNION ALL
  SELECT ',' AS char
  UNION ALL
  SELECT ' ' AS char
  UNION ALL
  SELECT 'W' AS char
  UNION ALL
  SELECT 'o' AS char
  UNION ALL
  SELECT 'r' AS char
  UNION ALL
  SELECT 'l' AS char
  UNION ALL
  SELECT 'd' AS char
  UNION ALL
  SELECT '!' AS char
)
-- GROUP_CONCAT is a MySQL function that concatenates strings.
--"with ..... as" is a MySQL syntax that allows you to create a temporary table.
SELECT GROUP_CONCAT(char ORDER BY CHAR_LENGTH(char) SEPARATOR '') AS "text"
FROM hello_chars;
-- The result of this query is a single row with a single column. The column is named "test".
-- The value of the column is "Hello, World!".
-- The column name is not important, but the value is.
-- The value is what will be displayed in terminal.

