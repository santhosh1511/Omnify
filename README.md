# **📊 Data Analysis Report: Multi-Service Business**

![Dashboard Preview](https://github.com/santhosh1511/Omnify/blob/main/Omnify.png)

## **1️⃣ Introduction**

### **🎯 Objective**
This project analyzes **booking data** for a multi-service business to uncover trends and provide actionable insights. The process includes **data cleaning, exploratory data analysis (EDA), SQL querying, and interactive dashboard creation** using Power BI.

---

## **2️⃣ Data Overview**

📌 The dataset consists of **1,000 records**, each representing a customer booking.  

### **📂 Key Data Attributes:**
- **📅 Booking Details:** Booking ID, Type, Date, Status
- **👤 Customer Info:** ID, Name, Email, Phone
- **🏢 Service Details:** Class Type, Instructor, Facility, Theme, Service Type
- **💰 Financial Data:** Duration (mins), Price

### **⚠ Data Quality Issues Identified:**
❌ **Missing Values:** Class Type, Instructor, Time Slot, Facility, Theme  
❌ **Irrelevant Column:** 'Subscription Type' (only missing values)  
❌ **Data Type Issues:** Booking Date stored as string  
✅ **Duplicates:** None found  

---

## **3️⃣ Data Cleaning Process**

✔ Converted **Booking Date** to datetime format  
✔ Filled missing values with **'Unknown' / 'Not Assigned'**  
✔ Removed **'Subscription Type'** (100% missing values)  
✔ Converted **Duration (mins)** to integer  

📌 *Cleaned dataset is now ready for analysis!*  

---

## **4️⃣ Exploratory Data Analysis (EDA)**

### **🔹 Key Insights**
#### **📊 Revenue & Booking Trends**
💰 **Total Revenue:** $XXX,XXX  
📈 **Seasonal trends:** Peaks in **summer months**, drops in off-seasons  

#### **🏆 Popular Booking Types**
🎉 **Birthday Parties** = **40% of all bookings**  
📉 Some class types show **low demand** → Need better marketing  

#### **🛍️ Customer Spending Patterns**
🔝 **Top 10% of customers generate 60% of revenue**  
🔁 Many customers book **only once** → Low retention issue  

#### **🏢 Facility Utilization**
🚀 Some facilities **overbooked**, others **underutilized**  
💡 **Potential for price adjustments & repurposing**  

---

## **5️⃣ SQL Queries for Business Insights**

```sql
-- Total Revenue Calculation
SELECT SUM(Price) AS Total_Revenue FROM bookings;

-- Most Popular Booking Types
SELECT Booking_Type, COUNT(*) AS Total_Bookings 
FROM bookings GROUP BY Booking_Type ORDER BY Total_Bookings DESC;

-- Top Spending Customers
SELECT Customer_Name, SUM(Price) AS Total_Spent 
FROM bookings GROUP BY Customer_Name ORDER BY Total_Spent DESC LIMIT 10;
```

---

## **6️⃣ Dashboard Development**


### **📊 Key Components:**
✅ **Revenue & Booking KPIs** – Total revenue & number of bookings  
✅ **Booking Trends Over Time** – Monthly trends via line chart  
✅ **Popular Booking Types** – Bar chart ranking services  
✅ **Top Customers** – Table of highest spenders  
✅ **Facility Utilization** – Facility usage comparison via bar chart  

---

## **7️⃣ Business Insights & Recommendations**

### **📈 Increase Revenue Stability**
✔ Implement **off-season discounts**  
✔ Offer **premium pricing packages** for high-demand services  

### **🎯 Improve Customer Retention**
✔ Launch a **loyalty program**  
✔ Use **personalized marketing** based on past bookings  

### **🏢 Optimize Facility Management**
✔ Adjust **pricing for high-demand facilities**  
✔ **Repurpose underutilized spaces** for new offerings  

---

## **8️⃣ Conclusion**

🚀 By addressing **seasonal fluctuations**, optimizing **facility use**, and improving **customer retention**, the business can **increase profitability** and provide a better **customer experience**. The **interactive Power BI dashboard** helps track performance and make data-driven decisions.

---

## **9️⃣ Deliverables**

✔ **📂 Cleaned dataset**  
✔ **📝 SQL queries for insights**  
✔ **📊 Interactive dashboard (Power BI/Python Dash)**  
✔ **🎥 Loom video walkthrough**  

---

📌 **Author:** Santhosh  
📅 **Date:** 27-02-2025  
🔗 **GitHub Repository:** [https://github.com/santhosh1511/Omnify](https://github.com/santhosh1511/Omnify)  

💡 *For questions or contributions, feel free to open an issue!* 🚀
