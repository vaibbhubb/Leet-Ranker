# Draw The Triangle 2

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

_P(R)_ represents a pattern drawn by Julia in _R_ rows. The following pattern represents _P(5)_:

    * 
    * * 
    * * * 
    * * * * 
    * * * * *

Write a query to print the pattern _P(20)_.


**Input Format**

 

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-09-23T10:07:21.040Z  

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

[View on HackerRank](https://www.hackerrank.com/challenges/draw-the-triangle-2/problem)