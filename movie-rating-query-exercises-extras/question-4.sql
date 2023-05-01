-- Question #4
-- Find the titles of all movies not reviewed by Chris Jackson.

-- Answer #4
SELECT title
FROM Movie
WHERE title NOT IN (SELECT title
    FROM Reviewer
    JOIN Rating
    ON Rating.rID = Reviewer.rID
    JOIN Movie
    ON Movie.mID = Rating.mID
    WHERE Reviewer.name = "Chris Jackson"
)