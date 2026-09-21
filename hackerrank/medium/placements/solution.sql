/*
Enter your query here.
*/
SELECT S.Name
FROM Students S
JOIN Friends F ON S.ID = F.ID
JOIN Packages SP ON S.ID = SP.ID
JOIN Packages FP ON F.Friend_ID = FP.ID
WHERE FP.Salary > SP.Salary
ORDER BY FP.Salary;
