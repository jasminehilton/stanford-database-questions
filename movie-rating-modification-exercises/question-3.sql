-- Question #3
-- Remove all ratings where the movie's year is before 1970 or after 2000, and the rating is fewer than 4 stars.

-- Answer #3
DELETE from Rating
where ( 
(select year from Movie where Movie.mID = Rating.mID) not between 1970 and 2000) 
and stars < 4;
