-- Question #1
-- Find the names of all reviewers who rated Gone with the Wind.

-- Answer #1
SELECT DISTINCT Reviewer.name
FROM Reviewer
JOIN Rating 
ON Rating.rID = Reviewer.rID
WHERE mID = 101