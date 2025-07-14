CREATE DATABASE customer_chrun;
use customer_chrun;

-- 1. Create and Populate the Customer Table

CREATE TABLE customers (
    customerID VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(3),
    Dependents VARCHAR(3),
    tenure INT,
    PhoneService VARCHAR(10),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    OnlineBackup VARCHAR(20),
    DeviceProtection VARCHAR(20),
    TechSupport VARCHAR(20),
    StreamingTV VARCHAR(20),
    StreamingMovies VARCHAR(20),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(3),
    PaymentMethod VARCHAR(50),
    MonthlyCharges FLOAT,
    TotalCharges FLOAT,
    Churn VARCHAR(3)
);
select * from customers;

-- 2. Segment Customers Based on Churn and Tenure
-- here maximum tenure is 72 and minimum tenure is 1

select 
case
	WHEN tenure <= 6 THEN '0-6 Months'
    WHEN tenure <= 12 THEN '7-12 Months'
    WHEN tenure <= 24 THEN '13-24 Months'
    WHEN tenure <= 48 THEN '25-48 Months'
	else '+49 months'
end  as tenure_group,
Churn,
count(*) as customer_count 
from customers
group by tenure_group, Churn
order by tenure_group, Churn;

-- 3. Analyze Monthly Churn Rate
-- Monthly churn trend over tenure in months
select 
tenure,
count(*) as total_customers,
sum(
case when Churn = 'Yes' then 1 else 0 end 
) as churned_customers,
round( 100.0 * sum(case when Churn = 'Yes' then 1 else 0 end) / count(*),2
) as churn_rate_percent
from customers
group by tenure
order by tenure;

-- 4. Aggregate Metrics by Churn for Visualization
-- Compare average metrics between churned vs retained customers
select 
Churn,
round(avg(tenure),2) as avg_tenure,
round(avg(MonthlyCharges),2) as avg_monthlycharges,
round(avg(TotalCharges),2) as avg_totalcharges,
count(*) as total_customers
from 
customers
group by Churn;










