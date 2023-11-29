CREATE VIEW total AS
SELECT
    SUM("families"), SUM("households"), SUM("population"), SUM("male"), SUM("female")
FROM
    census
GROUP BY
    "district", "locality";
