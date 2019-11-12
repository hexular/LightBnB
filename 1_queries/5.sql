SELECT properties.id, title, cost_per_night, start_date, end_date, avg(property_reviews.rating)
FROM reservations
JOIN properties ON reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1 AND end_date < now()::date
GROUP BY properties.id, properties.title, reservations.start_date, reservations.end_date
ORDER BY start_date
LIMIT 10;