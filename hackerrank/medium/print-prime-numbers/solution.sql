/*
Enter your query here.
*/
SELECT GROUP_CONCAT(n.num SEPARATOR '&')
FROM (
    SELECT @n := @n + 1 AS num
    FROM information_schema.tables t1, information_schema.tables t2, (SELECT @n := 1) v1
    LIMIT 999
) n
WHERE NOT EXISTS (
    SELECT 1
    FROM (
        SELECT @d := @d + 1 AS divisor
        FROM information_schema.tables t3, information_schema.tables t4, (SELECT @d := 1) v2
        LIMIT 999
    ) d
    WHERE d.divisor < n.num AND n.num % d.divisor = 0
);
