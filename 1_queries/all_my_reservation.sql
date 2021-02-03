SELECT properties.id as id,
properties.title as title,
reservations.start_date as start_date,
properties.cost_per_night as cost_per_night,
avg(property_reviews.rating) as rating
FROM reservations
JOIN property_reviews ON property_reviews.reservation_id=reservations.id
JOIN properties ON properties.id=reservations.property_id
WHERE reservations.end_date<now()::date AND reservations.guest_id=1
GROUP BY properties.id, reservations.id
ORDER BY start_date
LIMIT 10;