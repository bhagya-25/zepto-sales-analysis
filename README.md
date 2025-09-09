# Zepto Sales Analysis (SQL Portfolio Project)

## 📌 Overview
This project analyzes **Zepto’s sales data** to uncover revenue trends, price sensitivity, city-wise performance, and the impact of discounts & influencers.  
It is designed as a **portfolio case study** for SQL/Data Analyst roles.

---

## 🛠️ Tech Stack
- MySQL (RDBMS)
- SQL (DDL + DML + Queries)
- CSV for dataset storage
- (Optional) Python for visualization

## **📂 Project Structure**

/sql → SQL queries used for analysis

/data → Raw and cleaned datasets (CSV/SQL dumps)

README.md → Project overview & insights

---

## 📊 Dataset

**`products`**
- product_id (PK)
- product_name
- category  

**`sales`**
- sale_id (PK)
- product_id (FK)
- product_name
- city
- original_price
- current_price
- discount
- orders
- total_revenue
- influencer_active (Yes/No)

---

## ⚙️ Features / Queries
1. **Data Cleaning**
   - Linked sales with products using `product_id`
   - Removed redundant columns

2. **Analysis**
   - Top 10 selling products by revenue
   - Category-wise revenue contribution
   - City-wise performance
   - Average discount impact on revenue

3. **Insights**
   - Price sensitivity by category
   - Influencer effectiveness on sales

---
📈**Key Insights**

🛒 Category Performance

Snacks (₹1.71M) and Beverages (₹1.22M) generated the highest revenue.

Dairy & Confectionery underperformed compared to other categories despite discounts.

🌆 City-wise Revenue

Hyderabad (₹1.25M, 10,132 orders) leads in both sales and orders.

Bangalore & Pune are strong performers with high order volumes.

Delhi, Chennai, Mumbai lag behind slightly in overall sales.

🎯 Discount & Influencer Impact

Higher discounts correlate with higher order volumes, especially in Snacks & Instant Food.

Influencer campaigns show noticeable uplift in revenue compared to non-influencer campaigns.

💰 Price Sensitivity

Categories with higher average discount amounts (Snacks, Instant Food) also showed stronger revenue response.

Confectionery and Dairy were less price sensitive, meaning discounts didn’t boost sales as much.

---

**🛠️ SQL Concepts Used**

Joins → To link sales with product details

Aggregations → SUM(), AVG(), ROUND() for revenue analysis

Grouping → Category, city, influencer-based segmentation

Ordering & Limiting → Top N analysis

---

## 🚀 Example Query
**Top 10 Selling Products by Revenue**
```sql
SELECT product_name, SUM(total_revenue) AS revenue
FROM sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;
