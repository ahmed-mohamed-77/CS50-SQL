SELECT "name" FROM "districts"
WHERE "id" > (
    SELECT "district_id" FROM "expenditures"
    WHERE "per_pupil_expenditure" = (
        SELECT AVG("per_pupil_expenditure") FROM "expenditures"
    )
)
