CREATE VIEW "no_descriptions" AS
SELECT
    "id" ,
    "property_type" ,
    "host_name" ,
    "accommodates" ,
    "bedrooms"
FROM "listing";

SELECT * FROM "no_descriptions" limit 50;
