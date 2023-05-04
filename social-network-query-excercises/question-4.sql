-- Question #4
-- Find all students who do not appear in the Likes table (as a student who likes or is liked) and return their names and grades. Sort by grade, then by name within each grade.

-- Answer #4
SELECT Highschooler.name, Highschooler.grade
FROM Highschooler
WHERE Highschooler.ID 
NOT IN 
	(SELECT Likes.ID1
	FROM Likes
	UNION 
	SELECT Likes.ID2
	FROM Likes)