-- Databricks notebook source
-- ======================================================
-- VIEW ALL TABLES IN DATE_FUNCTIONS SCHEMA
-- Each query selects all data for exploration
-- ======================================================

-- Orders
-- Contains order transactions with order dates
SELECT *
FROM date_functions.default.orders;

-- Customer Signups
-- Contains customer registration information
SELECT *
FROM date_functions.default.customer_signups;

-- Sales
-- Contains product sales data and amounts
SELECT *
FROM date_functions.default.sales;

-- Transactions
-- Contains financial transaction records
SELECT *
FROM date_functions.default.transactions;

-- Deliveries
-- Contains delivery schedule and completion data
SELECT *
FROM date_functions.default.deliveries;

-- Employees
-- Contains employee master data
SELECT *
FROM date_functions.default.employees;

-- Online Orders
-- Contains online orders where date is stored as text
SELECT *
FROM date_functions.default.online_orders;

-- Payment Dates
-- Contains customer payment records
SELECT *
FROM date_functions.default.payment_dates;

-- Customer Purchases
-- Contains last purchase date per customer
SELECT *
FROM date_functions.default.customer_purchases;

-- Shipping Orders
-- Contains shipping order details and order dates
SELECT *
FROM date_functions.default.shipping_orders;

-- Bookings
-- Contains booking transactions
SELECT *
FROM date_functions.default.bookings;

-- Yearly Orders
-- Contains orders across multiple years
SELECT *
FROM date_functions.default.yearly_orders;

-- Monthly Orders
-- Contains monthly order activity
SELECT *
FROM date_functions.default.monthly_orders;

-- Subscriptions
-- Contains subscription start dates
SELECT *
FROM date_functions.default.subscriptions;

-- Campaign Sends
-- Contains marketing campaign send dates
SELECT *
FROM date_functions.default.campaign_sends;

-- Invoice Dates
-- Contains invoice issue dates
SELECT *
FROM date_functions.default.invoice_dates;

-- Customer Birthdays
-- Contains customer date of birth data
SELECT *
FROM date_functions.default.customer_birthdays;

-- Weekend Orders
-- Used to classify weekday vs weekend orders
SELECT *
FROM date_functions.default.weekend_orders;

-- Quarterly Transactions
-- Contains transactions used for quarter analysis
SELECT *
FROM date_functions.default.quarterly_transactions;

-- Recent Orders
-- Used for date difference and aging analysis
SELECT *
FROM date_functions.default.recent_orders;

-- BONUS: Customer Recency
-- Contains customer activity for segmentation
SELECT *
FROM date_functions.default.customer_recency;



-- ======================================================
-- SQL DATE FUNCTIONS EXERCISE (MY SOLUTIONS)
-- ======================================================

-- 1. I am extracting the day name from the order_date
SELECT  order_id, 
        customer_id, 
        order_date, 
        DAYNAME(order_date) AS day_name
FROM date_functions.default.orders;


-- 2. I am getting the month name from the signup_date
SELECT  customer_id, 
        customer_name, 
        signup_date, 
        MONTHNAME(signup_date) AS signup_month_name
FROM date_functions.default.customer_signups;


-- 3. I am extracting the month number from the sale_date
SELECT  sale_id,   
        product_name, 
        sale_date, 
        MONTH(sale_date) AS sale_month
FROM date_functions.default.sales;


-- 4. I am extracting the year from the transaction_date
SELECT  transaction_id, 
        customer_id, 
        transaction_date, 
        YEAR(transaction_date) AS transaction_year
FROM date_functions.default.transactions;


-- 5. I am extracting the day of the month from the delivery_date
SELECT  delivery_id, 
        customer_id, 
        delivery_date, 
        DAY(delivery_date) AS day_of_month
FROM date_functions.default.deliveries;


-- 6. I am adding today's date to each employee record
SELECT  employee_id, 
        employee_name, 
        department, 
        CURRENT_DATE() AS today_date
FROM date_functions.default.employees;


-- 7. I am converting the text column into a proper date format
SELECT  order_id, 
        customer_id, 
        order_date_text, 
        TO_DATE(order_date_text) AS order_date
FROM date_functions.default.online_orders;


-- 8. I am formatting the payment_date into a YYYY-MM-DD string
SELECT  payment_id,
        customer_id, 
        payment_date, 
        DATE_FORMAT(payment_date, 'yyyy-MM-dd') AS formatted_payment_date
FROM date_functions.default.payment_dates;


-- 9. I am calculating the number of days since the last purchase
SELECT  customer_id, 
        customer_name, 
        last_purchase_date, 
        DATEDIFF(CURRENT_DATE(), last_purchase_date) AS days_since_last_purchase
FROM date_functions.default.customer_purchases;


-- 10. I am adding 7 days to the order_date to get expected delivery
SELECT  order_id, 
        customer_id, 
        order_date, 
        order_date + 7 AS expected_delivery_date
FROM date_functions.default.shipping_orders;


-- 11. I am extracting year, month, and day from the booking_date
SELECT  booking_id, 
        customer_id, 
        booking_date, 
        YEAR(booking_date) AS booking_year, 
        MONTH(booking_date) AS booking_month, 
        DAY(booking_date) AS booking_day
FROM date_functions.default.bookings;


-- 12. I am filtering the data to only show orders from the year 2026
SELECT  order_id, 
        customer_id, 
        order_date,     
        YEAR(order_date) AS order_year, 
        amount
FROM date_functions.default.yearly_orders
WHERE YEAR(order_date) = 2026;


-- 13. I am filtering orders to only include those from March (month 3)
SELECT  order_id, 
        customer_id, 
        order_date, 
        MONTH(order_date) AS order_month, 
        amount
FROM date_functions.default.monthly_orders
WHERE MONTH(order_date) = 3;


-- 14. I am getting the last day of the month from the start_date
SELECT  subscription_id, 
        customer_id, 
        start_date, 
        LAST_DAY(start_date) AS month_end_date
FROM date_functions.default.subscriptions;


-- 15. I am getting the first day of the month using DATE_TRUNC
SELECT  send_id, 
        customer_id, 
        send_date, 
        DATE_TRUNC('month', send_date) AS month_start_date
FROM date_functions.default.campaign_sends;


-- 16. I am formatting the invoice_date into year and month format
SELECT  invoice_id, 
        customer_id, 
        invoice_date, 
        DATE_FORMAT(invoice_date, 'yyyy-MM') AS invoice_month_year
FROM date_functions.default.invoice_dates;


-- 17. I am calculating customer age based on date_of_birth
SELECT  customer_id, 
        customer_name, 
        date_of_birth, 
        FLOOR(DATEDIFF(CURRENT_DATE(), date_of_birth) / 365) AS customer_age
FROM date_functions.default.customer_birthdays;


-- 18. I am classifying orders as Weekend or Weekday using CASE
SELECT  order_id, 
        customer_id, 
        order_date, 
        DAYNAME(order_date) AS day_name, 
        CASE  
            WHEN DAYNAME(order_date) IN ('Saturday', 'Sunday') THEN 'Weekend' 
            ELSE 'Weekday'
        END AS day_type
FROM date_functions.default.weekend_orders;


-- 19. I am extracting the quarter from the transaction_date
SELECT  transaction_id, 
        customer_id, 
        transaction_date, 
        QUARTER(transaction_date) AS transaction_quarter, 
        amount
FROM date_functions.default.quarterly_transactions; 


-- 20. I am filtering orders that are more than 30 days old
SELECT  order_id, 
        customer_id, 
        order_date, 
        DATEDIFF(CURRENT_DATE(), order_date) AS days_since_order, 
        amount
FROM date_functions.default.recent_orders
WHERE DATEDIFF(CURRENT_DATE(), order_date) > 30;


-- 21. BONUS: I am calculating recency and segmenting customers
SELECT  customer_id, 
        customer_name, 
        last_purchase_date, 
        DATEDIFF(CURRENT_DATE(), last_purchase_date) AS days_since_last_purchase, 
        CASE
            WHEN DATEDIFF(CURRENT_DATE(), last_purchase_date) <= 30 THEN 'Active Customer' 
            WHEN DATEDIFF(CURRENT_DATE(), last_purchase_date) BETWEEN 31 AND 90 THEN 'At Risk Customer'
            ELSE 'Inactive Customer'
        END AS customer_status
FROM date_functions.default.customer_recency;


-- ======================================================
-- END OF MY SOLUTIONS
-- ======================================================
