-- Question #6
-- Find names and grades of students who only have friends in the same grade. Return the result sorted by grade, then by name within each grade.

-- Answer #6
SELECT DISTINCT h1.name, h1.grade
FROM Friend
JOIN Highschooler h1
ON h1.ID = Friend.ID1
JOIN Highschooler h2
ON h2.ID = Friend.ID2
WHERE h1.grade = h2.grade
AND h1.ID NOT IN 
(SELECT Friend.ID1
FROM Friend
JOIN Highschooler h3
ON h3.ID = Friend.ID1
JOIN Highschooler h4
ON h4.ID = Friend.ID2
WHERE h3.grade <> h4.grade)
ORDER BY h1.grade, h1.name