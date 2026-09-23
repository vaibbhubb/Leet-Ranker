# Draw The Triangle 2

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
**Submitted:** 2026-09-23T10:07:21.579Z  

```sql
/*
Enter your query here.
*/
SET @row := 0;
SELECT REPEAT('* ', @row := @row + 1) 
FROM information_schema.tables 
LIMIT 20;

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/print-prime-numbers/problem)