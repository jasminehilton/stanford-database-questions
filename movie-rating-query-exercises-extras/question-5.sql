-- Question #5
-- For all pairs of reviewers such that both reviewers gave a rating to the same movie, return the names of both reviewers. Eliminate duplicates, don't pair reviewers with themselves, and include each pair only once. For each pair, return the names in the pair in alphabetical order.

-- Answer #5
SELECT DISTINCT reva.name, revb.name
FROM Rating AS rata
INNER JOIN Rating AS ratb
ON rata.mID = ratb.mID
JOIN Reviewer AS reva
ON reva.rID = rata.rID
JOIN Reviewer AS revb
ON revb.rID = ratb.rID
WHERE rata.rID <> ratb.rID
AND reva.name < revb.name
ORDER BY reva.name