-- Question #10
-- Find the movie(s) with the highest average rating. Return the movie title(s) and average rating. (Hint: This query is more difficult to write in SQLite than other systems; you might think of it as finding the highest average rating and then choosing the movie(s) with that average rating.)

-- Answer #10
SELECT average.title, MAX(average)
FROM (SELECT Movie.title, AVG(Rating.stars) AS average
	FROM Rating
	JOIN Movie
	ON Movie.mID = Rating.mID
	GROUP BY Movie.title) AS average 
GROUP BY average.title
ORDER BY average DESC LIMIT 1