-- Question #11
-- Find the movie(s) with the lowest average rating. Return the movie title(s) and average rating. (Hint: This query may be more difficult to write in SQLite than other systems; you might think of it as finding the lowest average rating and then choosing the movie(s) with that average rating.)

-- Answer #11
SELECT average.title, MIN(average)
FROM (SELECT Movie.title, AVG(Rating.stars) AS average
	FROM Rating
	JOIN Movie
	ON Movie.mID = Rating.mID
	GROUP BY Movie.title) AS average 
GROUP BY average.title
ORDER BY average LIMIT 2