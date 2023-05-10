-- Question #7
-- For each student A who likes a student B where the two are not friends, find if they have a friend C in common (who can introduce them!). For all such trios, return the name and grade of A, B, and C.

-- Answer #7
select H1.name, H1.grade, H2.name, H2.grade, H3.name, H3.grade
from Likes L 
join Friend F1 
join Friend F2 
join Highschooler H1 -- A 
join Highschooler H2 -- B
join Highschooler H3 -- C - mutual Friend
			on L.ID1 = H1.ID -- join to get A's name and grade -- A likes B
			and L.ID2 = H2.ID -- Join to get B's name grade -- A likes B
			and F1.ID2 = H3.ID --  join to get C or mutual friend's name grade -- A's Friend and B's Friend
where not exists (	select * from Friend F -- Get the people who like each other but are not friends 
				where L.ID1 = F.ID1 
                and L.ID2 = F.ID2 -- A likes B and A and B are friends too
				) 
		and F1.ID1 = L.ID1 -- A likes B
		and F2.ID2 = L.ID2 -- A likes B
		and F1.ID2 = F2.ID1 -- A's friend is also B's Friend - mutual friend;
		;