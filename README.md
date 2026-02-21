
# IBM HR Analytics Employee Attrition and Performance

![](https://github.com/subrata-dey7/ibm-hr-analytics-employee-attrition-and-performance/blob/main/ibm_hr_analytics_employee_attrition_dashboard.png)

## **Executive Summary**:

Employee attrition poses a significant challenge for organizations due to increased hiring costs, loss of institutional knowledge, and reduced workforce productivity. This project analyzes the IBM HR Analytics dataset to understand the current employee attrition rate, identify key demographic and job-related drivers, and provide actionable recommendations to improve employee retention.

Using Python for data cleaning and exploratory data analysis (EDA), SQL for structured analytical queries, and Tableau for interactive visualization, the analysis reveals an overall attrition rate of 16.12%, with higher turnover observed among specific job roles, departments, and employees experiencing low job involvement and work-life balance. Distance from home, compensation structure, and marital status also show measurable influence on attrition patterns.

The findings support data-driven HR decision-making by highlighting high-risk employee segments and suggesting targeted retention strategies.

## **Table of Contents**:

    1. Introduction    
    2. Objectives and Scope  
    3. Data Description
    4. Methodology
    5. Analysis and Visualisations
    6. Insights and Interpretation
    7. Recommendations
    8. Conclusion
    9. References
    10. License

### 1. Introduction

Employee attrition directly impacts organizational stability, operational efficiency, and long-term growth. High attrition leads to increased recruitment costs, training overhead, and productivity loss.

The objective of this project is to analyze historical HR data to uncover patterns and drivers of employee attrition, enabling organizations to proactively address workforce challenges and improve employee satisfaction and retention.

This project was selected due to its real-world business relevance and its ability to demonstrate end-to-end data analytics skills, from data preparation to executive-level dashboarding.


### 2. Objectives and Scope

🎯 **Objectives:**

- Measure the overall employee attrition rate.
- Analyze attrition by age, gender, education, department, and job role.
- Identify key factors influencing attrition, including:
    - Job satisfaction and involvement.
    - Work-life balance.
    - Salary and compensation structure.
    - Stock option benefits.
    - Distance from home.
- Create interactive visual dashboards for stakeholder insights.

🔍 **Scope:**

- Descriptive and diagnostic analysis.
- Python-based EDA.
- SQL analytical queries.
- Tableau dashboard creation.

### 3. Data Description

- **Dataset:** IBM HR Analytics Employee Attrition Dataset
- **Total Records:** 1,470 employees
- **Total Features:** 35 attributes
- **Target Variable:** Attrition (Yes / No)

🔹 **Key Feature Categories:**

- **Demographics:** Age, Gender, Marital Status, Education
- **Job Information:** Department, Job Role, Job Level
- **Compensation:** Monthly Income, Percent Salary Hike, Stock Option Level
- **Satisfaction Metrics:** Job Satisfaction, Job Involvement, Work-Life Balance
- **Tenure Metrics:** Years at Company, Years in Current Role

Initial observations indicated no duplicate employee records, with categorical and numerical features suitable for structured analysis.

### 4. Methodology

🧹 **Data Cleaning & Preparation (Python):**

- Missing value checks and validation.
- Data type standardization.
- Categorical value consistency checks.
- Feature engineering for analysis-ready fields.

📊 **Exploratory Data Analysis (EDA):**

- Univariate, bivariate, and multivariate analysis.
- Distribution analysis using histograms and bar charts.
- Relationship analysis using grouped and stacked charts.
- Correlation analysis for numerical variables.

🧮 **SQL Analysis:**

- Aggregations and grouping for attrition rates.
- Role-wise, department-wise, and salary-wise comparisons.
- Ranking and top-N analysis for high-risk categories.

📈 **Visualization (Tableau)**

- KPI cards.
- Donut, Pie and bar charts.
- Binned histograms.
- Interactive filters (Education Field, Attrition).

### 5. Analysis and Visualisations

🔹 **Overall Workforce Metrics:**

- **Total Employees:** 1,470
- **Active Employees:** 1,233 (83.88%)
- **Attrition Count:** 237 (16.12%)
- **Average Age:** 37 years

🔹 **Attrition by Gender:**

- **Male Attrition:** 150 employees (63.29%)
- **Female Attrition:** 87 employees (36.71%)

This indicates higher attrition among male employees in absolute terms.

🔹 **Department-wise Attrition:**

- **Research & Development:** 56.12% of attrition
- **Sales:** 38.82%
- **Human Resources:** 5.06%

R&D and Sales together contribute to nearly 95% of total attrition.

🔹 **Job Role & Satisfaction Analysis:**

- Sales Executives and Laboratory Technicians show the highest absolute attrition.
- Research Scientists, despite large headcount, show relatively better retention.
- Higher job satisfaction ratings (3–4) correlate with lower attrition.

🔹 **Distance from Home:**

- Employees living 0–5 km from the workplace show the lowest attrition.
- Attrition increases steadily beyond 10 km, indicating commute burden as a factor.

🔹 **Age Group Analysis:**

- Majority of employees fall in the 30–36 age range.
- Younger employees (under 30) show higher relative attrition.

### 6. Insights and Interpretation

- Attrition is not evenly distributed across departments and roles.
- Job satisfaction, job involvement, and work-life balance are strong retention drivers.
- Compensation alone does not explain attrition; non-monetary factors matter.
- Distance from home is a significant but often overlooked factor.

These insights enable HR teams to prioritize interventions where they are most impactful.

### 7. Recommendations 

- **Target High-Risk Roles:**
  
    Focus retention programs on Sales Executives and Laboratory Technicians.

- **Improve Work-Life Balance Policies:**

    Flexible schedules and workload management for employees with low WLB scores.

- **Commute-Friendly Policies:**

    Remote or hybrid options for employees living farther from the workplace.

- **Career Development Programs:**

    Improve engagement for early-career employees to reduce early attrition.

### 8. Conclusion

This project successfully demonstrates how data analytics can support strategic HR decision-making. By combining Python, SQL, and Tableau, the analysis provides a holistic view of employee attrition, identifies critical risk factors, and delivers actionable, business-ready insights.

### 9. References

- IBM HR Analytics Dataset.
- Python: Pandas, NumPy, Matplotlib, Seaborn.
- SQL (MySQL).
- Tableau Desktop.

- **Tools used:**
    - 🧮 **Excel** - used as it provides easy-to-use tools for organizing, calculating, visualizing, and interpreting data.
    - 📊 **Tableau Desktop** - Main data visualization platform used for report creation.
    - 📝 **Data Modeling** - Relationships established among tables to enable cross-filtering and aggregation.
    - 📁 **File Format** - .twb for development and .png for dashboard previews.

### 10. 📜 License

This project is open source and free to use for educational purposes.

🎉🎉 Thank you for checking out the - “IBM HR Analytics Employee Attrition and Performance” project !!!

