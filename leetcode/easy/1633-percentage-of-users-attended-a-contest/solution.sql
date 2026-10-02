# Write your MySQL query statement below
WITH amiokaybacha AS 
(
SELECT
    COUNT(user_id) AS C
FROM Users
)
SELECT 
    contest_id,
    ROUND(COUNT(R.user_id) * 100 / S.C,2) AS percentage
FROM Register AS R JOIN amiokaybacha AS S 
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id ASC
