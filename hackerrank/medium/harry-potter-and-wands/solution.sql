/*
Enter your query here.
*/
WITH cte AS (
    SELECT W.id, P.age, W.coins_needed, W.power
    FROM Wands AS W
    INNER JOIN Wands_Property AS P
        ON W.code = P.code
    WHERE P.is_evil = 0
)
SELECT c.id, c.age, c.coins_needed, c.power
FROM cte AS c
WHERE c.coins_needed = (
    SELECT MIN(c2.coins_needed)
    FROM cte AS c2
    WHERE c2.power = c.power
      AND c2.age = c.age
)
ORDER BY c.power DESC, c.age DESC;
