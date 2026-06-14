# 📅 SQL Date Functions Exercise

## 👤 About Me  
Hi, I'm **Lebogang Shilwane**, a data-focused professional building practical skills in SQL, data analysis, and reporting.  

💻 SQL Environment: Databricks SQL (Apache Spark)  
📊 Focus: Data Analysis, Reporting & Business Insights  
🚀 Goal: Data Analyst / BI role  

---

## 📌 Exercise Overview  
This exercise demonstrates the use of **SQL date functions** to extract, transform, and analyse date-based data in different business scenarios.  

⚠️ **Note:** This is a **practice exercise**, not a full project.  

The dataset includes multiple small tables, each designed to test a specific date function concept.

---

## 🎯 Objective  
To understand and apply key SQL date operations such as:  

- Extracting date parts (day, month, year)  
- Formatting dates into readable text  
- Converting text into date format  
- Calculating differences between dates  
- Filtering data based on date conditions  
- Performing date-based calculations  
- Using CASE statements with dates  

---

## 🧠 Key Skills Demonstrated  

✅ Extracting date components using `DAY`, `MONTH`, `YEAR`  
✅ Using `DAYNAME()` and `MONTHNAME()`  
✅ Converting text to date using `TO_DATE()`  
✅ Formatting dates using `DATE_FORMAT()` / `TO_CHAR()`  
✅ Calculating date differences with `DATEDIFF()`  
✅ Adding days to dates (date arithmetic)  
✅ Using `DATE_TRUNC()` and `LAST_DAY()`  
✅ Applying conditional logic with `CASE`  
✅ Writing clean, well-structured SQL queries  

---

## 🧩 Problem Approach  

The exercise is structured into 4 sections:

| Section | Topic | Purpose |
|--------|------|--------|
| Q1–Q5 | Extract Date Parts | Get day, month, year from dates |
| Q6–Q10 | Convert & Calculate | Convert and perform calculations |
| Q11–Q15 | Filtering & Multi-Extract | Work with multiple date components |
| Q16–Q20 | Advanced Date Logic | Apply formatting and conditions |

**Bonus:** Customer segmentation using date logic  

---

## 📂 Exercise Structure  

The exercise uses multiple tables such as:

- Orders  
- Customer Signups  
- Sales  
- Transactions  
- Deliveries  
- Employees  
- Online Orders  
- Payments  
- Customer Purchases  
- Shipping Orders  
- Bookings  
- Subscriptions  
- Campaign Sends  
- Invoice Dates  
- Customer Birthdays  
- And more...  

Each table represents a **real-world business scenario** involving dates.

---

## 🔍 Key Concepts  

### ✅ Date Extraction  
Used to break down a date into meaningful parts:
```sql
SELECT  DAY(order_date),
        MONTH(order_date),
        YEAR(order_date)
FROM orders;
```
###✅ Date Formatting
Convert date into readable text:
```sql
SELECT DATE_FORMAT(payment_date, 'yyyy-MM-dd')
FROM payment_dates;
```

###✅ Date Difference
Calculate time differences between dates:
```sql
SELECT  DATEDIFF(CURRENT_DATE(),
        last_purchase_date)
FROM customer_purchases;
```

###✅ Date Filtering
Filter data based on year or month:
```sql
WHERE YEAR(order_date) = 2026
```

###✅ Conditional Date Logic
Using CASE with dates:
```sql
CASE     
  WHEN DATEDIFF(CURRENT_DATE(), last_purchase_date) <= 30 THEN 'Active'   
  ELSE 'Inactive'END`
```

---

##⚠️ Important Observations
The dataset includes realistic scenarios such as:

- Some customers have older purchase dates
- Some records require date conversion from text
- Date differences vary based on current date
- Some calculations depend on business rules (e.g., 30-day cutoff)

---

## 🚀 Business Value
This exercise reflects real-world use cases such as:

- 📊 Customer activity tracking
- 📈 Purchase and retention analysis
- 📦 Delivery and logistics planning
- 📅 Time-based reporting
- 🧾 Data transformation and cleaning

---

## 📝 Bonus Insight

- Date functions are critical in every data analysis role
- Most business questions involve time-based metrics
- Clean date logic improves reporting accuracy
- Combining multiple date functions builds strong SQL skills

--

## ✅ Conclusion

- ✔ Date functions help extract meaningful insights from time-based data
- ✔ DATEDIFF enables performance and recency analysis
- ✔ DATE_TRUNC and LAST_DAY simplify time grouping
- ✔ CASE + dates allows powerful business classification

