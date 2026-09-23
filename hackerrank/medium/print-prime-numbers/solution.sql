/*
Enter your query here.
*/
SET @row := 0;
SELECT REPEAT('* ', @row := @row + 1) 
FROM information_schema.tables 
LIMIT 20;
