-- Disable safe update mode (for updates if needed)
SET SQL_SAFE_UPDATES = 0;

-- ✅ Top Selling Products by Revenue
SELECT product_name,
       SUM(total_revenue) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

-- ✅ Category-Wise Revenue
SELECT p.category,
       ROUND(SUM(s.total_revenue),2) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue DESC;

-- ✅ City-Wise Sales Performance
SELECT city,
       SUM(total_revenue) AS revenue,
       COUNT(*) AS orders
FROM sales
GROUP BY city
ORDER BY revenue DESC;

-- ✅ Average Discount Impact by Influencers
SELECT influencer_active,
       ROUND(AVG(discount),2) AS avg_discount,
       ROUND(AVG(total_revenue),2) AS avg_revenue
FROM sales
GROUP BY influencer_active;

-- ✅ Price Sensitivity Analysis (Category-wise)
SELECT p.category,
       ROUND(AVG(original_price - current_price),2) AS avg_discount_amount,
       ROUND(SUM(total_revenue),2) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY avg_discount_amount DESC;
