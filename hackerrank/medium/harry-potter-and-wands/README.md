# Top Competitors

![Difficulty](https://img.shields.io/badge/Difficulty-Medium-yellow)

## Problem

Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand. 

Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each *non-evil* wand of high power and age. Write a query to print the _id_, _age_, _coins\_needed_, and _power_ of the wands that Ron's interested in, sorted in order of descending _power_. If more than one wand has same power, sort the result in order of descending _age_.

**Input Format**

The following tables contain data on the wands in Ollivander's inventory:

- _Wands:_ The _id_ is the id of the wand, _code_ is the code of the wand, _coins\_needed_ is the total number of gold galleons needed to buy the wand, and _power_ denotes the quality of the wand (the higher the power, the better the wand is). <img src="https://s3.amazonaws.com/hr-challenge-images/19502/1458538092-b2a8163a74-ScreenShot2016-03-08at12.13.39AM.png"/>

- _Wands\_Property:_ The _code_ is the code of the wand, _age_ is the age of the wand, and _is\_evil_ denotes whether the wand is good for the dark arts. If the value of _is\_evil_ is _0_, it means that the wand is not evil. The mapping between *code* and *age* is one-one, meaning that if there are two pairs, $(code_1,\ age_1)$ and $(code_2,\ age_2)$, then $code_1 \neq code_2$ and $age_1 \neq age_2$.<img src="https://s3.amazonaws.com/hr-challenge-images/19502/1458538221-18c4092b7d-ScreenShot2016-03-08at12.13.53AM.png"/>

----

**Constraints**

 

**Output Format**

## Solution

**Language:** SQL  
**Runtime:** N/A  
**Memory:** N/A  
**Submitted:** 2026-09-21T09:06:43.670Z  

```sql
/*
Enter your query here.
*/
SELECT h.hacker_id, h.name
FROM Submissions s
JOIN Challenges c ON s.challenge_id = c.challenge_id
JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
JOIN Hackers h ON s.hacker_id = h.hacker_id
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
HAVING COUNT(s.submission_id) > 1
ORDER BY COUNT(s.submission_id) DESC, h.hacker_id ASC

```

---

[View on HackerRank](https://www.hackerrank.com/challenges/harry-potter-and-wands/problem)