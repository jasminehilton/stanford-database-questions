-- Question #3
-- What is the average number of friends per student? (Your result should be just one number.)

-- Answer #3
SELECT AVG(count)
FROM (SELECT COUNT(Friend.ID1) AS count
FROM Highschooler
JOIN Friend
ON Friend.ID1 = Highschooler.ID
GROUP BY Friend.ID1) AS countTable