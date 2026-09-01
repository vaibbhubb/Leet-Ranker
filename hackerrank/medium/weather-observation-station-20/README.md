# Weather Observation Station 19

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

A *[median](https://en.wikipedia.org/wiki/Median)* is defined as a number separating the higher half of a data set from the lower half. Query the *median* of the *Northern Latitudes* (*LAT\_N*) from **STATION** and round your answer to $4$ decimal places. 


**Input Format**

The **STATION** table is described as follows:

<img src="https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg" title="Station.jpg" />

where *LAT\_N* is the northern latitude and *LONG\_W* is the western longitude. 

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-09-01T07:40:27.772Z  

```sql
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

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/weather-observation-station-20/problem)