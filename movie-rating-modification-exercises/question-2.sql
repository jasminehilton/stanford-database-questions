-- Question #2
-- For all movies that have an average rating of 4 stars or higher, add 25 to the release year. (Update the existing tuples; don't insert new tuples.)

-- Answer #2

UPDATE Movie
SET year = year + 25
WHERE Movie.mID IN
(SELECT Rating.mID
FROM Rating  
GROUP BY Rating.mID
HAVING AVG(stars) >= 4) ;