# 📊 Customer Revenue & Retention Analysis (RFM Segmentation)

## 📌 Problem Statement
Understanding customer value and retention is critical for business growth.  
This project analyzes customer purchasing behavior to identify high-value users, detect churn risk, and uncover revenue trends using SQL.

---

## 📊 Dataset
- Superstore Dataset  
- Contains transactional data including customer details, order dates, sales, and product information  

---

## ⚙️ Tools & Technologies
- **SQL (MySQL)** – Data extraction, transformation, and analysis  
- **Excel (for preprocessing)** – Data inspection and validation  

---

## 🔍 Approach

### 1. Data Cleaning
- Filtered out invalid records (zero/negative sales and quantities)  
- Standardized and prepared data for analysis  

---

### 2. Customer Revenue Analysis
- Calculated total revenue per customer  
- Identified top-performing customers contributing to overall sales  

---

### 3. RFM Segmentation
- Applied Recency, Frequency, and Monetary (RFM) analysis  
- Used SQL window functions (NTILE) to score and segment customers  
- Classified customers into segments such as:
  - High Value  
  - Loyal  
  - At Risk  
  - Low Value  

---

### 4. Churn Analysis
- Defined churn based on inactivity over a defined period  
- Identified at-risk customers for potential retention strategies  

---

### 5. Revenue Trend Analysis
- Analyzed monthly revenue trends using time-based aggregation  
- Used window functions (LAG) to track revenue changes over time  

---

### 6. Product Performance Analysis
- Identified top-performing products based on sales  
- Evaluated contribution to overall revenue  

---

## 💡 Key Insights
- A small group of customers contributes a significant portion of total revenue  
- Customers with low recency and frequency show higher churn risk  
- Revenue trends reveal seasonal fluctuations and growth opportunities  

---

## 🚀 Business Recommendations
- Focus retention strategies on high-value and at-risk customers  
- Encourage long-term engagement through targeted offers  
- Optimize product strategy based on top-performing categories  

---

## 📁 Project Structure[superstore_data.csv](https://github.com/user-attachments/files/26387209/superstore_data.csv)
[superstore_analysis.sql](https://github.com/user-attachments/files/26387214/superstore_analysis.sql)
<img width="2085" height="1025" alt="churn_analysis" src="https://github.com/user-attachments/assets/8f7ed691-ef52-4db7-b028-0fcb43e4c108" />
<img width="2385" height="1478" alt="revenue_trend" src="https://github.com/user-attachments/assets/b99ae2e2-682e-4246-8004-3c0dab52206f" />
<img width="2230" height="1025" alt="top_customers" src="https://github.com/user-attachments/assets/29c00494-39d6-49c2-96a9-4a9d1c8aabf6" />
<img width="1997" height="1042" alt="rfm_segmentation" src="https://github.com/user-attachments/assets/5b2bbeac-eaa2-4eb1-b125-5f066ad25991" />


---

## 🎯 Outcome
This project demonstrates how SQL can be used to perform end-to-end customer analytics, including segmentation, churn detection, and revenue analysis, to support data-driven business decisions.

---

## 🔗 Author
**Martin J Mathew**
