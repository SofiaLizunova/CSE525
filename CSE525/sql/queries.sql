-- Example analytical queries

-- 1. Percentage of hours above current STR
SELECT
    ROUND(100.0 * SUM(CASE WHEN above_current_str = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_above_current_str
FROM ampacity_results;

-- 2. Percentage of hours above planned upgrade
SELECT
    ROUND(100.0 * SUM(CASE WHEN above_upgrade = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS pct_above_upgrade
FROM ampacity_results;

-- 3. Average ampacity
SELECT AVG(ampacity_a) AS avg_ampacity
FROM ampacity_results;
