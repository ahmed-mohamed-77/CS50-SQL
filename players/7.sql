SELECT COUNT(*) , "bats" FROM players
GROUP BY "bats"
HAVING "bats" = 'R' OR "bats" = 'L';
