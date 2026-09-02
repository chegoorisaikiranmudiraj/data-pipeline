-- Retail Sales — Customer Analysis
-- BigQuery Table:
-- sales-data-506808.sales_db.retail-sales


-- 1. Top 10 customers by total spending

SELECT
  customer_id,
  SUM(total_spent) AS total_spent
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;


-- 2. Purchase frequency by customer

SELECT
  customer_id,
  COUNT(DISTINCT transaction_id) AS purchase_count,
  CASE
    WHEN COUNT(DISTINCT transaction_id) = 1 THEN 'One-time'
    ELSE 'Repeat'
  END AS buyer_type
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY customer_id
ORDER BY purchase_count DESC;


-- 3. One-time vs repeat customers

SELECT
  buyer_type,
  COUNT(*) AS num_customers
FROM (
  SELECT
    customer_id,
    CASE
      WHEN COUNT(DISTINCT transaction_id) = 1 THEN 'One-time'
      ELSE 'Repeat'
    END AS buyer_type
  FROM `sales-data-506808.sales_db.retail-sales`
  GROUP BY customer_id
)
GROUP BY buyer_type
ORDER BY num_customers DESC;


-- 4. Total purchases and spending by customer

SELECT
  customer_id,
  COUNT(DISTINCT transaction_id) AS total_transactions,
  SUM(quantity) AS total_items_purchased,
  SUM(total_spent) AS total_spent
FROM `sales-data-506808.sales_db.retail-sales`
GROUP BY customer_id
ORDER BY total_spent DESC;


-- 5. Average basket size per customer

SELECT
  customer_id,
  ROUND(AVG(basket_quantity), 2) AS avg_basket_size
FROM (
  SELECT
    customer_id,
    transaction_id,
    SUM(quantity) AS basket_quantity
  FROM `sales-data-506808.sales_db.retail-sales`
  GROUP BY customer_id, transaction_id
)
GROUP BY customer_id
ORDER BY avg_basket_size DESC;