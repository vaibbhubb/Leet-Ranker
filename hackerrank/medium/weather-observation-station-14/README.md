# Weather Observation Station 14

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Query the greatest value of the  *Northern Latitudes*  (*LAT_N*) from  **STATION**  that is less than. Truncate your answer to decimal places.

 **Input Format** 

The  **STATION**  table is described as follows:

where  *LAT_N*  is the northern latitude and  *LONG_W*  is the western longitude.

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-09-01T08:26:54.366Z  

```sql
/*
Enter your query here.
*/
SELECT TRUNCATE(MAX(LAT_N), 4) FROM (SELECT LAT_N FROM STATION WHERE LAT_N < 137.2345) AS T

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/weather-observation-station-14/problem)