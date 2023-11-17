SELECT DISTINCT P.name FROM movies AS M
JOIN stars AS S ON M.id = S.movie_id
JOIN people AS P ON P.id = S.person_id
WHERE M.year = 2004
ORDER BY P.birth;
