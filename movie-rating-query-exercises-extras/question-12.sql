-- Question #12
-- For each director, return the director's name together with the title(s) of the movie(s) they directed that received the highest rating among all of their movies, and the value of that rating. Ignore movies whose director is NULL.

-- Answer #12
SELECT Movie.director, Movie.title, MAX(Rating.stars)
FROM Movie 
JOIN Rating 
ON Rating.mID = Movie.mID
GROUP BY Movie.director
HAVING Movie.director IS NOT NULL;
