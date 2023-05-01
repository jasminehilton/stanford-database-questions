-- Question #6
-- For each rating that is the lowest (fewest stars) currently in the database, return the reviewer name, movie title, and number of stars.

-- Answer #6
SELECT Reviewer.name, Movie.title, Rating.stars
FROM Rating
JOIN Reviewer
ON Reviewer.rID = Rating.rID
JOIN Movie
ON Movie.mID = Rating.mID
WHERE Rating.stars <= 2