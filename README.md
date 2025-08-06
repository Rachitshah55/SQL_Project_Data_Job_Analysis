
# Remote Data Analyst Job Market — Salary & Skills Analysis (2023)

## 🧠 Introduction
This project explores the remote job market for data analysts in 2023. The goal is to identify high-paying roles and the most in-demand technical skills using real job posting data. The entire analysis was done in SQL and visualized with a consistent dark theme to maintain clarity and visual appeal.

## 🏗️ Background
With the rise of remote work and increasingly specialized job expectations, data analysts face a global, competitive landscape. Employers are willing to pay top dollar for candidates who possess the right blend of skills — but what exactly are those?

This project answers five key questions:
1. What are the top-paying remote data analyst jobs?
2. What skills appear in those high-paying roles?
3. What are the most commonly demanded skills?
4. Which skills are linked to the highest average salaries?
5. Which skills offer the best combination of demand and pay?

### 📊 Dataset Overview
Sourced from [Luke Barousse’s SQL dataset](https://lukebarousse.com/sql), the project uses the following tables:
- **`job_postings_fact`**: Core job data (title, salary, remote status, etc.)
- **`company_dim`**: Company metadata
- **`skills_job_dim`**: Job-to-skill mapping
- **`skills_dim`**: Skill names and categories

## 🛠 Tools I Used
- **SQL (PostgreSQL)** — for querying and analysis
- **Visual Studio Code** — for writing and managing scripts
- **Git & GitHub** — for version control and publishing
- **Python + Matplotlib** — for dark-themed data visualizations

## 📊 The Analysis

---

### 💼 Question 1: What are the top-paying remote data analyst jobs?

Filtered remote roles with salary data, joined with company info, and sorted by average salary.

#### 🖼 Visualization:
![Query 1 Chart](query_1_chart_dark.png)

> [!NOTE]
> The highest-paid role was a "Data Analyst" at Mantys with a salary of $650K — showing title alone doesn’t define value.

---

### 🧠 Question 2: What skills are most common among the highest-paying remote roles?

Used top 10 jobs from Query 1 and extracted their skills.

#### 🖼 Visualization:
![Query 2 Chart](query_2_chart_dark_fixed_title.png)

> [!NOTE]
> SQL, Python, and Excel dominate — cloud and data engineering tools like AWS, Databricks, and Azure also show up often.

---

### 💼 Question 3: What are the most demanded skills overall?

Analyzed all remote roles for frequency of skill mentions.

#### 🖼 Visualization:
![Query 3 Chart](query_3_chart_dark.png)

> [!NOTE]
> SQL is required in over 7,000 listings. Excel, Python, Tableau, and Power BI complete the top 5.

---

### 💸 Question 4: Which skills are linked to the highest average salaries?

Calculated average salary per skill for remote jobs.

#### 🖼 Visualization:
![Query 4 Chart](query_4_chart_dark.png)

> [!NOTE]
> PySpark, Bitbucket, and Watson are top earners — these niche tools are often used in specialized, high-budget teams.

---

### 🔧 Question 5: What are the most optimal skills for remote data analysts?

Filtered for skills with both high demand (job count > 10) and high average salary.

#### 🖼 Visualization:
![Query 5 Chart](query_5_chart_dark.png)

> [!NOTE]
> Snowflake, Azure, and Go are top-tier skills that strike a balance between demand and strong salary potential.

---

## 🎯 What I Learned
- Remote job listings offer rich, structured data to analyze tech trends.
- SQL remains the #1 skill for data analysts — no matter how advanced the role.
- Specialized tools (PySpark, Go, Snowflake) often command higher salaries but appear less frequently.
- Combining demand + salary filters (Query 5) helps identify "smart" skills to learn.

## ✅ Conclusion
This project provides a data-backed roadmap for aspiring and current data analysts seeking high-paying remote roles. Whether you're upskilling or job hunting, these insights can guide your learning priorities and job application strategy.

> [!TIP]
> Want to stand out? Master the fundamentals, then add 1–2 specialized skills like **Snowflake**, **Azure**, or **Go** to maximize your value in the market.
