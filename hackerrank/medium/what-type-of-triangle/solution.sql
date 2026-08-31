/*
Enter your query here.
*/
SELECT 
    CASE 
        WHEN A+B<=C OR A+C<=B OR B+C<=A THEN 'Not A Triangle'
        ELSE CASE 
                WHEN A=B AND B=C THEN 'Equilateral'
                WHEN A=B AND B!=C OR A=C AND C!=B OR B=C and C!=A THEN 'Isosceles'
                ELSE 'Scalene'
                END
    END AS T
FROM TRIANGLES
