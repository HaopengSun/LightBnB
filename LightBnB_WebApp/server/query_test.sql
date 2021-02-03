SELECT avg(property_reviews.rating) as average_rating,
properties.cost_per_night
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%Montreal%'
AND properties.cost_per_night >= 10000
AND properties.cost_per_night <= 60000
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 5;