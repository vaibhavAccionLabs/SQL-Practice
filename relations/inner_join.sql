-- SELECT * 
-- FROM users;

SELECT u.id, u.first_name, a.street, a.house_number, c.name AS city_name
FROM users AS U
INNER JOIN addresses AS a ON u.address_id = a.id
INNER JOIN cities AS c ON a.city_id = c.id; 