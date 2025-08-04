SELECT
    skills_dim.skills,
    COUNT(jpf.job_id) AS job_count
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
GROUP BY
    skills_dim.skills
ORDER BY
    job_count DESC
LIMIT
    10