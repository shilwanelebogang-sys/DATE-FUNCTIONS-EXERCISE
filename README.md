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
<img width="620" height="160" alt="Screenshot 2026-06-14 113905" src="https://github.com/user-attachments/assets/226a4033-1ed8-47b3-85b3-767331ad4cd2" />


Q7 → Convert text to date  
<img width="591" height="158" alt="Screenshot 2026-06-14 115324" src="https://github.com/user-attachments/assets/32ef3d87-9ee8-4778-9cff-36835a7959fc" />


Q8 → Format date as text  
<img width="696" height="160" alt="Screenshot 2026-06-14 120856" src="https://github.com/user-attachments/assets/a262197b-1834-4f98-8ff3-cdca19092d29" />
  

Q9 → Days since last purchase  
<img width="725" height="159" alt="Screenshot 2026-06-14 123002" src="https://github.com/user-attachments/assets/be7faf84-490b-4157-9d68-d3ddc78b2947" />
 

Q10 → Expected delivery date  
<img width="630" height="165" alt="Screenshot 2026-06-14 123021" src="https://github.com/user-attachments/assets/ca81e65e-81ee-467c-ac91-328ac4a110e8" />
  

---

### Filtering & Date Logic  
Q11 → Extract year, month, day  
<img width="911" height="160" alt="Screenshot 2026-06-14 123054" src="https://github.com/user-attachments/assets/844485f5-c0d9-4a0b-8f7e-ac7ede82065c" />

 

Q12 → Filter orders from 2026  
<img width="671" height="85" alt="Screenshot 2026-06-14 123936" src="https://github.com/user-attachments/assets/2e733a79-2774-4ca9-910e-691b7480ef3d" />


Q13 → Filter orders from March  
<img width="690" height="82" alt="Screenshot 2026-06-14 124249" src="https://github.com/user-attachments/assets/d61f3620-6b08-4aaa-8182-31f0edcd3c25" />


Q14 → Last day of the month  
<img width="632" height="165" alt="Screenshot 2026-06-14 133406" src="https://github.com/user-attachments/assets/28c26151-6ad7-4851-9105-67b780faf04f" />
 

Q15 → First day of the month  
<img width="626" height="164" alt="Screenshot 2026-06-14 134520" src="https://github.com/user-attachments/assets/2e5bc70b-9414-4757-9388-448175a75eea" />


---

### Advanced Date Analysis  
Q16 → Format month and year  
<img width="635" height="166" alt="Screenshot 2026-06-14 135412" src="https://github.com/user-attachments/assets/8706a08d-2e98-4a38-bba1-41e5c715aabc" />


Q17 → Customer age calculation  
<img width="638" height="160" alt="Screenshot 2026-06-14 144417" src="https://github.com/user-attachments/assets/6e3dd891-04f2-4f72-96d5-2b0c5e45c5f7" />
 

Q18 → Weekend vs weekday classification  
<img width="682" height="155" alt="Screenshot 2026-06-14 150656" src="https://github.com/user-attachments/assets/6981e20d-cfff-4724-95d0-b8951b72085f" />


Q19 → Transactions by quarter  
<img width="786" height="161" alt="Screenshot 2026-06-14 150946" src="https://github.com/user-attachments/assets/a1e1e953-586b-4fa9-97c9-07e93de75241" />



Q20 → Orders older than 30 days  
<img width="711" height="137" alt="Screenshot 2026-06-14 152037" src="https://github.com/user-attachments/assets/4e3a9155-ed2e-4cd6-91ab-10f61369d3fd" />

 

---

### Bonus  
Q21 → Customer recency segmentation  
<img width="885" height="160" alt="Screenshot 2026-06-14 154507" src="https://github.com/user-attachments/assets/c30e5e36-3148-4101-937a-a6bc6a852c40" />


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

