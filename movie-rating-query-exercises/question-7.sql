-- Question #7
-- For each movie that has at least one rating, find the highest number of stars that movie received. Return the movie title and number of stars. Sort by movie title.

-- Answer #7
SELECT m.title, max(r.stars)
FROM Rating r 
JOIN Movie m on m.mID = r.mID
GROUP BY m.title
ORDER BY m.title;