-- Question #5
-- Find the name and grade of the student(s) with the greatest number of friends.

-- Answer #5
SELECT name, grade
	FROM Friend
    JOIN Highschooler on Highschooler.ID = Friend.ID1
	GROUP BY Friend.ID1, name, grade
    Having COUNT(Friend.ID1) >= (SELECT MAX(count) as maximum
FROM
	(SELECT COUNT(Friend.ID1) AS count, ID1
	FROM Friend
	GROUP BY Friend.ID1) AS fvredg)




