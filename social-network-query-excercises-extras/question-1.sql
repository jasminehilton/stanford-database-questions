-- Question #1
-- For every situation where student A likes student B, but student B likes a different student C, return the names and grades of A, B, and C.

-- Answer #1
SELECT h1.name, h1.grade, h3.name, h3.grade, h2.name, h2.grade
FROM Likes l1
LEFT JOIN Likes l2
ON l1.ID2 = l2.ID1
JOIN Highschooler h1 ON h1.ID = l1.ID1
JOIN Highschooler h2 ON h2.ID = l2.ID2
JOIN Highschooler h3 ON h3.ID = l1.ID2
WHERE l1.ID1 <> l2.ID2