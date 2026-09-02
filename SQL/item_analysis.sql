-- Retail Sales — Item Analysis
-- BigQuery Table:
-- sales-data-506808.sales_db.retail-sales


-- 1. Revenue and volume by item

SELECT
  item,
  SUM(total_spent) AS total_revenue,
  SUM(quantity) AS total_volume
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY item
ORDER BY total_revenue DESC;


-- 2. Top 5 items by revenue

SELECT
  item,
  SUM(total_spent) AS total_revenue
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY item
ORDER BY total_revenue DESC
LIMIT 5;


-- 3. Top 5 items by sales volume

SELECT
  item,
  SUM(quantity) AS total_volume
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY item
ORDER BY total_volume DESC
LIMIT 5;


-- 4. Average price per unit by item

SELECT
  item,
  ROUND(AVG(price_per_unit), 2) AS avg_price_per_unit
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY item
ORDER BY avg_price_per_unit DESC;


-- 5. Item performance by category

SELECT
  category,
  item,
  SUM(total_spent) AS total_revenue,
  SUM(quantity) AS total_volume
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY category, item
ORDER BY category, total_revenue DESC;