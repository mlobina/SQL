SELECT *
FROM addresses
LEFT JOIN users ON users.address_id = addresses.id
INNER JOIN cities ON cities.id = addresses.city_id;