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

#### 📂 Exercise Structure
## 📊 Query Outputs (Screenshots)

Below are outputs from the SQL queries executed in Databricks:

### Extract Date Functions  
Q1 → Day name from orders  
<img width="560" height="160" alt="Screenshot 2026-06-14 111717" src="https://github.com/user-attachments/assets/45bb59e2-c1c4-4c99-99ca-e60f177d5a9e" />
 

Q2 → Month name from signup date  
<img width="670" height="159" alt="Screenshot 2026-06-14 111913" src="https://github.com/user-attachments/assets/4ad64efc-4385-466d-a583-2d8bef56f8a9" />


Q3 → Month number from sales  
<img width="550" height="155" alt="Screenshot 2026-06-14 112324" src="https://github.com/user-attachments/assets/32126f76-9831-4a14-96ef-f1d4d89a2bdb" />
  

Q4 → Year from transactions  
<img width="657" height="156" alt="Screenshot 2026-06-14 112353" src="https://github.com/user-attachments/assets/2c2030ae-63cb-423a-a9e6-d74c23250e56" />
 

Q5 → Day of month from deliveries  
<img width="614" height="167" alt="Screenshot 2026-06-14 112840" src="https://github.com/user-attachments/assets/4b7ca80b-cf76-48a5-9701-f80fbe900caa" />


---

### Convert & Calculate Dates  
Q6 → Current date added to employees  
![Uploading Screenshot 2026-06-14 112840.png…]()
 

Q7 → Convert text to date  
image  

Q8 → Format date as text  
image  

Q9 → Days since last purchase  
image  

Q10 → Expected delivery date  
image  

---

### Filtering & Date Logic  
Q11 → Extract year, month, day  
image  

Q12 → Filter orders from 2026  
image  

Q13 → Filter orders from March  
image  

Q14 → Last day of the month  
image  

Q15 → First day of the month  
image  

---

### Advanced Date Analysis  
Q16 → Format month and year  
image  

Q17 → Customer age calculation  
image  

Q18 → Weekend vs weekday classification  
image  

Q19 → Transactions by quarter  
image  

Q20 → Orders older than 30 days  
image  

---

### Bonus  
Q21 → Customer recency segmentation  
image  

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

