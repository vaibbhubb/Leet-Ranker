/*
Enter your query here.
*/
WITH CHETNA AS 
( 
SELECT 
    H.hacker_id,
    H.name,
    MAX(S.score) AS best_score
FROM Hackers AS H INNER JOIN Submissions AS S
ON H.hacker_id = S.hacker_id
GROUP BY H.hacker_id, H.name, S.challenge_id
)
SELECT 
    V.hacker_id,
    V.name,
    SUM(best_score) AS chetnaaa
FROM CHETNA AS V
GROUP BY V.hacker_id, V.name
HAVING chetnaaa > 0
ORDER BY chetnaaa DESC, V.hacker_id ASC

