-- Question #2
-- Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order.

-- Answer #2
SELECT DISTINCT year
FROM Rating
JOIN Movie ON Rating.mID = Movie.mID
WHERE stars >= 4
ORDER BY year ASC