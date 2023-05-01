-- Question #6
-- For all cases where the same reviewer rated the same movie twice and gave it a higher rating the second time, return the reviewer's name and the title of the movie.

-- Answer #6
Select r.name, m.title 
FROM Rating r1, Rating r2
JOIN Movie m ON m.mID = r2.mID
JOIN Reviewer r ON r.rID = r2.rID 
WHERE
r1.rID = r2.rID
AND
r2.ratingDate > r1.ratingDate
AND
r1.mID = r2.mID
AND 
r2.stars > r1.stars;