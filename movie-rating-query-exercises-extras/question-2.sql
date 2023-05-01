-- Question #2
-- For any rating where the reviewer is the same as the director of the movie, return the reviewer name, movie title, and number of stars.

-- Answer #2
SELECT Reviewer.name, Movie.title, Rating.stars
FROM Reviewer
JOIN Rating 
ON Rating.rID = Reviewer.rID
JOIN Movie 
ON Movie.mID = Rating.mID
WHERE Reviewer.name = Movie.director