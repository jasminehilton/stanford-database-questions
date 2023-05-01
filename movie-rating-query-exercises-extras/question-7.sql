-- Question #7
-- List movie titles and average ratings, from highest-rated to lowest-rated. If two or more movies have the same average rating, list them in alphabetical order.

-- Answer #7
SELECT DISTINCT Movie.title, AVG(Rating.stars) AS avgstars
FROM Movie
JOIN Rating
ON Rating.mID = Movie.mID
GROUP BY Movie.title
ORDER BY avgstars DESC, Movie.title