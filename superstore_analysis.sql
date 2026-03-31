CREATE DATABASE superstore_db;
USE superstore_db;
CREATE TABLE superstore (
  row_id INT,
  order_id VARCHAR(50),
  order_date DATE,
  ship_date DATE,
  ship_mode VARCHAR(50),
  customer_id VARCHAR(50),
  customer_name VARCHAR(100),
  segment VARCHAR(50),
  country VARCHAR(50),
  city VARCHAR(50),
  state VARCHAR(50),
  postal_code INT,
  region VARCHAR(50),
  product_id VARCHAR(50),
  category VARCHAR(50),
  sub_category VARCHAR(50),
  product_name VARCHAR(255),
  sales FLOAT,
  quantity INT,
  discount FLOAT,
  profit FLOAT
);

SELECT * FROM superstore LIMIT 10;

SELECT *
FROM superstore
WHERE sales > 0
AND quantity > 0;

#CUSTOMER REVENUE ANALYSIS
SELECT 
  customer_id,
  customer_name,
  SUM(sales) AS total_revenue
FROM superstore
GROUP BY customer_id, customer_name
ORDER BY total_revenue DESC;

#RFM ANALYSIS
CREATE TABLE rfm_base AS
SELECT 
  customer_id,
  MAX(order_date) AS last_order_date,
  COUNT(order_id) AS frequency,
  SUM(sales) AS monetary
FROM superstore
GROUP BY customer_id;

#RFM SCORING
CREATE TABLE rfm_scores AS
SELECT *,
  NTILE(4) OVER (ORDER BY last_order_date DESC) AS recency_score,
  NTILE(4) OVER (ORDER BY frequency DESC) AS frequency_score,
  NTILE(4) OVER (ORDER BY monetary DESC) AS monetary_score
FROM rfm_base;

#CUSTOMER SEGMENTATION
SELECT *,
  CASE 
    WHEN recency_score >= 3 AND frequency_score >= 3 THEN 'Loyal'
    WHEN monetary_score >= 3 THEN 'High Value'
    WHEN recency_score = 1 THEN 'At Risk'
    ELSE 'Low Value'
  END AS customer_segment
FROM rfm_scores;

#CHURN DETECTION
SELECT 
  customer_id,
  MAX(order_date) AS last_order,
  CASE 
    WHEN MAX(order_date) < '2017-01-01' THEN 'Churned'
    ELSE 'Active'
  END AS churn_status
FROM superstore
GROUP BY customer_id;

#MONTHLY REVENUE TREND
SELECT 
  DATE_FORMAT(order_date, '%Y-%m') AS month,
  SUM(sales) AS revenue,
  LAG(SUM(sales)) OVER (ORDER BY DATE_FORMAT(order_date, '%Y-%m')) AS prev_revenue
FROM superstore
GROUP BY month;

#TOP PRODUCTS
SELECT 
  product_name,
  SUM(sales) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;