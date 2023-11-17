SELECT  distinct M.title FROM movies AS M
JOIN stars AS S ON M.id = S.movie_id
JOIN people AS P ON P.id = S.person_id
JOIN ratings AS R ON M.id = R.movie_id
WHERE P.name ='Bradley Cooper' OR P.name = 'Jennifer Lawrence';
