SELECT COUNT(*) AS "PlayerCount", "bats", "throws"
FROM players
WHERE ("bats" = 'R' AND "throws" = 'L') OR ("bats" = 'L' AND "throws" = 'R')
GROUP BY "bats", "throws";
