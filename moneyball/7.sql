SELECT first_name, last_name FROM players
WHERE id = (SELECT MAX(salary) FROM salaries)
