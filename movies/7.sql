SELECT M.title , R.rating FROM movies AS M
join ratings AS R ON M.id = R.movie_id
WHERE M.year = 2010 AND R.rating > 0
ORDER BY R.rating DESC, M.title ASC;
