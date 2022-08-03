SELECT a.id, street, house_number, first_name, email, c.name AS city_name
FROM addresses AS a 
LEFT JOIN users AS U ON u.address_id = a.id
LEFT JOIN cities AS c ON a.city_id = c.id; 