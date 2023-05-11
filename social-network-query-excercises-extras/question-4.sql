-- Question #4
-- Find the number of students who are either friends with Cassandra or are friends of friends of Cassandra. Do not count Cassandra, even though technically she is a friend of a friend.

-- Answer #4
SELECT COUNT(*)
FROM (SELECT DISTINCT f1.ID2
FROM Friend f1
WHERE f1.ID1 = 1709
UNION 
SELECT DISTINCT f2.ID2
FROM Friend f1 , Friend f2
WHERE f1.ID1 = 1709
AND f2.ID1 = f1.ID2
AND f2.ID2 <> 1709) AS countTable



