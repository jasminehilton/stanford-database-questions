-- Question #9
-- Find the name and grade of all students who are liked by more than one other student.

-- Answer #9
SELECT h2.name, h2.grade
FROM Likes
JOIN Highschooler h1 
ON h1.ID = Likes.ID1
JOIN Highschooler h2
ON h2.ID = Likes.ID2
GROUP BY h2.name, h2.grade
HAVING COUNT(h2.name) > 1