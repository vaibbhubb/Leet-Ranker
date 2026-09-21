/*
Enter your query here.
*/
WITH hacker_counts AS (
    SELECT
        h.hacker_id,
        h.name,
        COUNT(c.challenge_id) AS total
    FROM Hackers h
    JOIN Challenges c ON c.hacker_id = h.hacker_id
    GROUP BY h.hacker_id, h.name
)
SELECT hacker_id, name, total
FROM hacker_counts
WHERE total = (SELECT MAX(total) FROM hacker_counts)
   OR total IN (
        SELECT total
        FROM hacker_counts
        GROUP BY total
        HAVING COUNT(*) = 1
   )
ORDER BY total DESC, hacker_id ASC;
