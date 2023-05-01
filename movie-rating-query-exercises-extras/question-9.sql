-- Question #9
-- Some directors directed more than one movie. For all such directors, return the titles of all movies directed by them, along with the director name. Sort by director name, then movie title. (As an extra challenge, try writing the query both with and without COUNT.)

-- Answer #9
SELECT Movie.title, Movie.director
FROM Movie
WHERE Movie.director IN 
(	SELECT Movie.director
	FROM Movie
	GROUP BY Movie.director
	HAVING COUNT(Movie.director) > 1
)
ORDER BY Movie.director, Movie.title