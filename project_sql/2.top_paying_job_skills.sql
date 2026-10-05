/*
Question: What skills are required for the top-paying data analyst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
-Add the specific skills required for these roles
-Why? It provides a detailed look at which high-paying jobs demand certain skills,
   helping job seekers understand which skills to develop that align with top salaries
*/


WITH top_paying_jobs AS(
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        job_posted_date,
        name AS company_name
    FROM
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND 
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY
        salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_paying_jobs.*,
    skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC

/*
The analysis reveals that high-paying data jobs value a combination of technical skills rather than one skill alone.
-SQL is the most essential skill, appearing in all 8 unique jobs in the dataset.

-Python comes second, required by 7 out of 8 jobs, highlighting the importance of programming and data analysis.

-Tableau is the leading visualization tool, appearing in 6 jobs, showing that presenting insights clearly is highly valued.

-Cloud and big-data technologies, such as AWS, Azure, Snowflake, and Databricks, add another layer of specialization.

-Advanced positions require broader capabilities. 
    -The highest-paying role, Associate Director – Data Insights, pays approximately $255,830 annually and requires a much wider technical skill set.
*/