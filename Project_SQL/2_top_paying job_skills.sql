WITH top_paying_job AS (
    SELECT 
        jpf.job_id,
        jpf.job_title,
        jpf.salary_year_avg,
        cd.name AS company_name
    FROM 
        job_postings_fact AS jpf
    LEFT JOIN 
        company_dim AS cd ON jpf.company_id = cd.company_id
    WHERE 
        jpf.job_title_short = 'Data Analyst'
        AND (jpf.job_work_from_home = TRUE OR jpf.job_location = 'Anywhere')
        AND jpf.salary_year_avg IS NOT NULL
    ORDER BY 
        jpf.salary_year_avg DESC,
        jpf.job_posted_date DESC
    LIMIT 10
)

SELECT
    top_paying_job.*,
    skills_dim.skills
FROM
    top_paying_job
INNER JOIN
    skills_job_dim ON
    top_paying_job.job_id = skills_job_dim.job_id
INNER JOIN
    skills_dim ON
    skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    top_paying_job.salary_year_avg DESC;