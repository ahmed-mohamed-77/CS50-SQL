SELECT DISTINCT P.name FROM movies AS M
JOIN directors AS D ON M.id = D.movie_id
JOIN people AS P ON P.id = S.person_id
JOIN 
WHERE M.year = 2004
ORDER BY P.birth;
