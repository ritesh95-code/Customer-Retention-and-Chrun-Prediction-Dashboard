# 📉 Customer Churn Prediction & Retention Dashboard

This project provides an end-to-end solution to identify customers at risk of churning and helps businesses take proactive retention actions. It integrates **SQL**, **Python**, and **Power BI** to clean and analyze data, build predictive models, and visualize insights for strategic decision-making.

---

## 🎯 Problem Statement

> How can we identify customers who are likely to churn and what actionable insights can be derived to reduce customer attrition?

The company has observed a growing churn rate with no centralized system to track customer behavior or identify churn drivers. The goal is to enable **data-driven retention strategies** using predictive analytics and BI.

---

## 🧰 Tools & Technologies

| Tool       | Purpose                                        |
|------------|------------------------------------------------|
| **SQL**    | Data preparation, segmentation, churn metrics  |
| **Python** | Data cleaning, feature engineering, ML models  |
| **Power BI** | Interactive dashboards and churn visualizations |

---

## 📊 Dataset

- **Source**: Telco Customer Churn Dataset  
- **Rows**: 7,032 customers  
- **Key Features**: `tenure`, `MonthlyCharges`, `TotalCharges`, `Contract`, `InternetService`, `Churn`

---

## 🗃️ Project Structure

Customer-Churn-Project/
│
├── WA_Fn-UseC_-Telco-Customer-Churn.csv
│   └─ Original Telco churn dataset
│
├── SQL Tasks.sql
│   └─ SQL queries for customer segmentation and churn metric calculations
│
├── Python_Tasks.ipynb
│   └─ Python notebook with churn modeling (Random Forest, XGBoost), SMOTE, and feature encoding
│
├── churn_risk_output.csv
│   └─ Model output: Churn predictions for integration with Power BI
│
├── customer_value_segment.csv
│   └─ CLV-based customer segmentation data
│
├── Customer Retension and Churn Prediction Dashboard.pbix
│   └─ Interactive Power BI dashboard with KPIs, visual filters, and churn insights
│
├── Customer-Churn-Prediction-and-Retention-Dashboard.pptx
│   └─ Project presentation summarizing the analysis, model, and insights
│
├── Customer Retension and Churn Prediction Dashboard.docx
│   └─ Full project report with explanations and visual exports
│
└── README.md
    └─ This file – project overview, structure, and documentation



---

## 🧠 Key Components

### 1. SQL Analysis
- Created `customers` table and segmented data by **tenure and churn**
- Calculated **monthly churn rates**
- Aggregated metrics like average tenure, charges by churn status

### 2. Python Modeling
- **Label Encoding** of categorical features
- **SMOTE** to address class imbalance
- Built models using:
  - **XGBoost** (best accuracy: 80.0%)
  - **Logistic Regression** (best F1 score: 59.3%)
- Created `ChurnRisk` and `ChurnProbability` columns for Power BI

### 3. Power BI Dashboards
- **Customer Overview**: Churn rate, revenue by payment and tenure  
- **Churn Deep Dive**: Drivers like contract type, tech support, charges  
- **Risk Segmentation**: CLV + churn risk overlap to prioritize retention

---

## 🔍 Key Insights

- **76%** of customers flagged as at risk of churn
- Highest churn among **Month-to-Month** contract users and **tech support opt-outs**
- Many **high-value customers** are also high-risk — retention should prioritize them
- **Low tenure + high monthly charges** = key churn pattern

---

## 📈 Future Enhancements

- 🧠 Use **NLP** to analyze customer support tickets for early churn signals  
- 🤖 Build a **retention recommender system**  
- 🔔 Trigger **real-time alerts** for CRM integration  

---

## 📝 Conclusion

This project demonstrates how **integrating SQL, Python, and Power BI** can build a comprehensive churn prediction and customer retention framework. It not only predicts at-risk customers but also provides **actionable business insights** through an interactive dashboard.

---

## 👨‍💻 Author

**Ritesh Salunkhe**  
*M.Sc. Data Science & Big Data Analytics*  
📫 [LinkedIn Profile](www.linkedin.com/in/ritesh-salunkhe

)

