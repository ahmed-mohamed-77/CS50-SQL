CREATE VIEW "one_bedrooms" AS
SELECT
    "id",
    "property_type",
    "host_name",
    "accommodates"
from "listings"
WHERE "bedrooms" = 1;
