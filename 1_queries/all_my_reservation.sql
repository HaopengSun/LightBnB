-- SELECT properties.id as id,
-- properties.title as title,
-- reservations.start_date as start_date,
-- properties.cost_per_night as cost_per_night,
-- avg(property_reviews.rating) as rating
-- FROM reservations
-- JOIN property_reviews ON property_reviews.reservation_id=reservations.id
-- JOIN properties ON properties.id=reservations.property_id
-- WHERE reservations.end_date<now()::date AND reservations.guest_id=1001
-- GROUP BY properties.id, reservations.id
-- ORDER BY start_date
-- LIMIT 10;

SELECT properties.id as id,
properties.title as title,
reservations.start_date as start_date,
reservations.end_date as end_date,
properties.number_of_bathrooms as number_of_bedrooms,
properties.number_of_bedrooms as number_of_bathrooms,
properties.parking_spaces as parking_spaces,
properties.cost_per_night as cost_per_night,
properties.thumbnail_photo_url as thumbnail_photo_url,
properties.cover_photo_url as cover_photo_url,
avg(rating) as average_rating
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id 
WHERE reservations.guest_id = 1001
AND reservations.end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY reservations.start_date
LIMIT 10;
