SELECT * FROM college.restaurant;
SELECT 
    city,
    AVG(CAST(rating AS DECIMAL(3,2))) AS avg_rating,
    SUM(rating_count) AS total_rating_count
FROM restaurant
WHERE rating REGEXP '^[0-9]'
GROUP BY city
ORDER BY COUNT(*) DESC
LIMIT 20;