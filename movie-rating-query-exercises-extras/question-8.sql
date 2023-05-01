-- Question #8
-- Find the names of all reviewers who have contributed three or more ratings. (As an extra challenge, try writing the query without HAVING or without COUNT.)

-- Answer #8
SELECT Reviewer.name
FROM Rating
JOIN Reviewer
ON Reviewer.rID = Rating.rID
GROUP BY Reviewer.name
HAVING COUNT(Rating.rID) >= 3