# Write your MySQL query statement below
SELECT N.id FROM Weather AS W INNER JOIN Weather AS N on W.recordDate = DATE_ADD(N.recordDate, INTERVAL -1 DAY) WHERE N.temperature > W.temperature