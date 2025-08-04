SELECT
    skills_dim.skills,
    ROUND(AVG(jpf.salary_year_avg), 0) AS avg_skill_salary
FROM
    job_postings_fact AS jpf
INNER JOIN
    skills_job_dim ON
    jpf.job_id = skills_job_dim.job_id
INNER JOIN
    skills_dim ON
    skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    jpf.job_title_short = 'Data Analyst'
    AND (jpf.job_work_from_home = TRUE OR jpf.job_location = 'Anywhere')
    AND jpf.salary_year_avg IS NOT NULL
GROUP BY
    skills_dim.skills
ORDER BY
    avg_skill_salary DESC
LIMIT
    25