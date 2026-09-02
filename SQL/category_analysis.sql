-- Retail Sales — Category Analysis
-- BigQuery Table:
-- sales-data-506808.sales_db.retail-sales


-- 1. Revenue and volume by category

SELECT
  category,
  SUM(total_spent) AS total_revenue,
  SUM(quantity) AS total_volume
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY category
ORDER BY total_revenue DESC;


-- 2. Category with highest revenue

SELECT
  category,
  SUM(total_spent) AS total_revenue
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 1;


-- 3. Category with highest sales volume

SELECT
  category,
  SUM(quantity) AS total_volume
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY category
ORDER BY total_volume DESC
LIMIT 1;


-- 4. Average price per unit by category

SELECT
  category,
  ROUND(AVG(price_per_unit), 2) AS avg_price_per_unit
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY category
ORDER BY avg_price_per_unit DESC;


-- 5. Discount usage by category

SELECT
  category,
  COUNTIF(discount_applied = TRUE) AS discounted_transactions,
  COUNT(*) AS total_transactions,
  ROUND(
    COUNTIF(discount_applied = TRUE) / COUNT(*) * 100,
    2
  ) AS discount_percentage
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY category
ORDER BY discount_percentage DESC;