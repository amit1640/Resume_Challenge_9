/*No of stoes in each city.*/
SELECT city, COUNT(*)
FROM dim_stores
GROUP BY CITY;