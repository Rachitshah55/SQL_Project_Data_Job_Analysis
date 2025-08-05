
SELECT
    sjd.skill_id,
    sd.skills,
    COUNT(sjd.job_id) AS job_count,
    ROUND(AVG(jpf.salary_year_avg)) AS avg_skill_salary
FROM
    job_postings_fact AS jpf
INNER JOIN
    skills_job_dim AS sjd ON
    jpf.job_id = sjd.job_id
INNER JOIN
    skills_dim AS sd ON
    sjd.skill_id = sd.skill_id
WHERE
    jpf.job_title_short = 'Data Analyst'
    AND (jpf.job_work_from_home = TRUE OR jpf.job_location = 'Anywhere')
    AND jpf.salary_year_avg IS NOT NULL
GROUP BY
    sjd.skill_id,
    sd.skills
HAVING
    COUNT(sjd.job_id) > 10
ORDER BY
    avg_skill_salary DESC,
    job_count DESC
LIMIT
    25
