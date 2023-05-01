-- Question #3
-- Find the titles of all movies that have no ratings.

-- Answer #3
SELECT title
FROM Movie
LEFT JOIN Rating 
ON Movie.mID = Rating.mID
WHERE Rating.mID IS NULL