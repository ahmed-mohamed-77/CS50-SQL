SELECT DISTINCT m.title
FROM people p1
JOIN stars s1 ON p1.id = s1.person_id
JOIN movies m ON s1.movie_id = m.id
JOIN stars s2 ON m.id = s2.movie_id
JOIN people p2 ON s2.person_id = p2.id
WHERE
    (p1.name = 'Bradley Cooper' OR p2.name = 'Bradley Cooper')
    AND (p1.name = 'Jennifer Lawrence' OR p2.name = 'Jennifer Lawrence')
    AND p1.name <> p2.name;
