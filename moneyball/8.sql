SELECT salary FROM salaries
WHERE id = (
    SELECT id FROM teams
        WHERE team_id IN (
            SELECT id FROM performances
                WHERE H = (
                    SELECT MAX(H) FROM performances
                )
        )
);
