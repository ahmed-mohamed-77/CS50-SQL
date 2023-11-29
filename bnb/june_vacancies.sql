SELECT
    L."id",
    L."property_type",
    L."host_name",
    COUNT(R."id") AS "reviews"
FROM
    listings AS L
JOIN
    reviews AS R ON R."listing_id" = L."id"
GROUP BY
    L."id", L."property_type", L."host_name"
ORDER BY
    "reviews" DESC, L."property_type", L."host_name"
LIMIT 100;
