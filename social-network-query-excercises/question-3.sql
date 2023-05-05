-- Question #3
-- For every pair of students who both like each other, return the name and grade of both students. Include each pair only once, with the two names in alphabetical order.

-- Answer #3
SELECT h1.name, h1.grade, h2.name, h2.grade
FROM Likes l1
JOIN Likes l2
ON l1.ID1 = l2.ID2
AND l1.ID2 = l2.ID1
JOIN Highschooler h1
ON h1.ID = l1.ID1
JOIN Highschooler h2
ON h2.ID = l1.ID2
WHERE h1.name < h2.name