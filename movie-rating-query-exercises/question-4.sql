-- Question #4
-- Some reviewers didn't provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date.

-- Answer #4
SELECT Reviewer.name
FROM Rating 
JOIN Reviewer
ON Reviewer.rID = Rating.rID
WHERE Rating.ratingDate IS NULL