/*
Enter your query here.
*/
SELECT MAX(e.months*e.salary), COUNT(*) FROM employee e WHERE e.months*e.salary = (SELECT MAX(e.months*e.salary) FROM employee e)
