/*
Enter your query here.
*/
WITH starts AS (
    SELECT Start_Date,
           ROW_NUMBER() OVER (ORDER BY Start_Date) AS rn
    FROM Projects
    WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)
),
ends AS (
    SELECT End_Date,
           ROW_NUMBER() OVER (ORDER BY End_Date) AS rn
    FROM Projects
    WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)
)
SELECT s.Start_Date, e.End_Date
FROM starts s
JOIN ends e ON s.rn = e.rn
ORDER BY DATEDIFF(e.End_Date, s.Start_Date) ASC, s.Start_Date ASC;
