# Print Prime Numbers

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Write a query to print all *prime numbers* less than or equal to $1000$. Print your result on a single line, and use the ampersand ($\&$) character as your separator (instead of a space).


For example, the output for all prime numbers $\leq 10$ would be:

	2&3&5&7

**Input Format**

 

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-09-23T10:10:05.963Z  

```sql
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

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/print-prime-numbers/problem)