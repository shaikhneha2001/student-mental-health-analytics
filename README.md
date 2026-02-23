# student-mental-health-analytics
SQL + Tableau based Data Analytics project analyzing student mental health trends.

# 🔎 Project Overview

The Student Mental Health Analytics System analyzes student depression and stress patterns using SQL and data visualization tools.

The project focuses on identifying high-risk students based on academic pressure, financial stress, sleep patterns, and other lifestyle factors to support data-driven intervention planning.

# 🛠️ Tech Stack

Database: MySQL

Query Tool: MySQL Workbench

Visualization: Tableau

Language: SQL

Dataset: Student Depression Dataset (CSV)

# 📁 Project Structure
student-mental-health-analytics
│
├── dataset/
│   └── depression_student_dataset.csv
│
├── sql/
│   └── student_analysis.sql
│
├── dashboard/
│   └── dashboard_screenshot.png
│
└── README.md

🗄️ Database Operations
✅ Data Cleaning

Standardized gender values (Male/Female → M/F)

Created Age_Group column using CASE statements

Handled missing and inconsistent values

✅ Exploratory Data Analysis

Gender distribution

Academic pressure analysis

Sleep duration trends

Financial stress analysis

Depression distribution

✅ Advanced Analysis

Depression by age group

Financial stress vs depression

High-risk student identification using CTE (MySQL 8+)

# 📊 Key Insights

High financial stress strongly correlates with depression.

Students aged 18–24 show higher depression trends.

Academic pressure combined with financial stress increases mental health risk.

Sleep duration below 6 hours shows noticeable stress impact.

🚨 High-Risk Identification Query
WITH HighRiskStudents AS (
    SELECT *
    FROM depression_student_dataset
    WHERE `Financial Stress` = 'High'
    AND `Academic Pressure` = 'High'
    AND `Depression` = 'Yes'
)

SELECT COUNT(*) AS High_Risk_Count
FROM HighRiskStudents;

# 📌 Dashboard Features (Tableau)

Depression distribution by gender

Financial stress heatmap

Age group risk segmentation

Academic pressure vs depression comparison

Interactive filtering and drill-down analysis

# 🎯 Project Objective

To leverage SQL-based analytics and data visualization tools to:

Identify high-risk students

Understand depression trends

Support early intervention strategies

Promote data-driven mental health planning

# 👩‍💻 Author

Neha Rashid Shaikh
Data Analyst | SQL | Power BI | Tableau | Python

## 📊 Dashboard Preview

</p><img width="1296" height="716" alt="tab+sql dashboard" src="https://github.com/user-attachments/assets/f6190ad1-590c-4e31-a291-374aed3c397a" width="800"/>


