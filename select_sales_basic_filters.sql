-- SELECT * FROM sales
-- WHERE volume > 1000 AND date_fulfilled IS NULL;

-- SELECT * FROM sales
-- WHERE is_recurring IS TRUE AND is_disputed IS FALSE;

SELECT * FROM sales
WHERE is_disputed IS TRUE AND volume > 3000;