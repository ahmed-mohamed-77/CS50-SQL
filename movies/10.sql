SELECT DISTINCT P.name FROM movies AS M
JOIN directors AS D ON M.id = D.movie_id
JOIN people AS P ON P.id = D.person_id
JOIN ratings AS R ON M.id =R.movie_id
WHERE R.rating >= 9;
