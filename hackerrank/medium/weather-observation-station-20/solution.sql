/*
Enter your query here.
*/
SELECT ROUND(AVG(LAT_N), 4)
FROM (
    SELECT 
        LAT_N,
        ROW_NUMBER() OVER (ORDER BY LAT_N) AS rn,
        COUNT(*) OVER () AS N
    FROM STATION
) AS T
WHERE rn IN (FLOOR((N+1)/2), CEIL((N+1)/2))
