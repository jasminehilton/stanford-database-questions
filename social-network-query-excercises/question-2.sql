-- Question #2
-- For every student who likes someone 2 or more grades younger than themselves, return that student's name and grade, and the name and grade of the student they like.

-- Answer #2
SELECT h2.name, h2.grade, h1.name, h1.grade
FROM Highschooler h1, Highschooler h2
JOIN Likes
ON Likes.ID1 = h2.ID
WHERE h2.grade - h1.grade >= 2
AND Likes.ID2 = h1.ID