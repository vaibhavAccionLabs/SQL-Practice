-- SELECT customer_name FROM( SELECT * FROM sales
-- WHERE volume > 1000) AS base_result;


-- CREATE VIEW base_result AS SELECT * FROM sales
-- WHERE volume > 1000;

SELECT customer_name, volume FROM base_result;

-- INSERT INTO top_sales (...)
-- SELECT