-- Question #8
-- For each movie, return the title and the 'rating spread', that is, the difference between highest and lowest ratings given to that movie. Sort by rating spread from highest to lowest, then by movie title.

-- Answer #8
SELECT title, MAX(r.stars) - MIN(r.stars)
FROM Rating r
JOIN Movie m 
ON m.mID = r.mID
GROUP BY title
ORDER BY MAX(r.stars) - MIN(r.stars) DESC , title