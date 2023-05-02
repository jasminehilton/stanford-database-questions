-- Question #1
-- Find the names of all students who are friends with someone named Gabriel.

-- Answer #1
SELECT NAME
FROM Highschooler 
WHERE ID 
IN (SELECT Friend.ID2 
	FROM Highschooler
	JOIN Friend
	ON Friend.ID1 = Highschooler.ID
	WHERE Highschooler.NAME = "Gabriel")
