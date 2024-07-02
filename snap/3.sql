SELECT * FROM  "messages" AS M
JOIN users AS U ON M.from_user_id = U.id
WHERE username = 'creativewisdom377 ';


SELECT * FROM users
WHERE username LIKE '%creativewisdom377%';

SELECT * FROM  "messages"
WHERE 
