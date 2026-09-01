/*
Enter your query here.
*/
SELECT
ROUND(SQRT(((b-a) * (b-a)) + ((d-c) * (d-c))), 4)
FROM (
        SELECT
            MIN(LAT_N) AS a,
            MIN(LONG_W) AS c,
            MAX(LAT_N) AS b ,
            MAX(LONG_W) AS d
        FROM STATION
      ) AS t
