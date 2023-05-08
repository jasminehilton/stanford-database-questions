-- Question #8
-- Find the difference between the number of students in the school and the number of different first names.

-- Answer #8
SELECT 
(SELECT COUNT(Highschooler.ID)
	FROM Highschooler)
-
(SELECT COUNT(DISTINCT Highschooler.name)
	FROM Highschooler) 