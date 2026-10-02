# Write your MySQL query statement below
SELECT
    C.name AS name
FROM Employee AS V
INNER JOIN Employee AS C
    ON V.managerId = C.Id
GROUP BY C.id
HAVING COUNT(V.id) >=5