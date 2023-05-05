-- Question #5
-- For every situation where student A likes student B, but we have no information about whom B likes (that is, B does not appear as an ID1 in the Likes table), return A and B's names and grades.

-- Answer #5
SELECT h1.name,h1.grade, h2.name, h2.grade
FROM Likes l1
LEFT OUTER JOIN Likes l2
ON l2.ID1 = l1.ID2
JOIN Highschooler h1
ON h1.ID = l1.ID1
JOIN Highschooler h2
ON h2.ID = l1.ID2
WHERE l2.ID2 IS NULL