CREATE VIEW available AS
SELECT L."id", L."property_type", L."host_name", A."date"
FROM listings AS L
JOIN availabilities AS A ON A."id" = L."listing_id";
