# Write your MySQL query statement below
SELECT 
    vaibhu.machine_id,
    ROUND(AVG(vaibhu.timestamp - chetuu.timestamp),3) AS processing_time
FROM Activity AS chetuu 
INNER JOIN Activity AS Vaibhu 
ON chetuu.machine_id = vaibhu.machine_id
AND chetuu.process_id = vaibhu.process_id
AND chetuu.activity_type = 'start'
AND vaibhu.activity_type = 'end'
GROUP BY vaibhu.machine_id
