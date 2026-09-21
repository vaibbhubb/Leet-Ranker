/*
Enter your query here.
*/
SELECT
CASE WHEN Grade < 8 THEN NULL ELSE Name END AS Name,
G.Grade,
Marks

FROM Students
INNER JOIN Grades AS G
    ON Students.Marks BETWEEN G.Min_Mark AND G.Max_Mark
ORDER BY G.Grade DESC, Name ASC, Marks ASC
