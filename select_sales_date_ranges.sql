-- SELECT * FROM sales
-- WHERE date_created > '2021-11-01' AND date_created < '2022-05-06';

-- SELECT * FROM sales
-- WHERE date_created BETWEEN '2021-11-01' AND '2022-05-01';

-- SELECT * FROM sales
-- WHERE date_fulfilled - date_created <=5;


SELECT * FROM sales
WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;
