/*
\copy skills_dim FROM 'C:/Users/machu/Downloads/all_folders/csv_files/skills_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy job_postings_fact FROM 'C:\Users\machu\Downloads\all_folders\csv_files\job_postings_fact.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy skills_job_dim FROM 'C:\Users\machu\Downloads\all_folders\csv_files\skills_job_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

\copy company_dim FROM 'C:/Users/machu/Downloads/all_folders/csv_files/company_dim.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
*/

-- NOTE: This has been updated from the video to fix issues with encoding

COPY company_dim
FROM 'C:/Users/machu/Downloads/all_folders/csv_files/company_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_dim
FROM 'C:/Users/machu/Downloads/all_folders/csv_files/skills_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY job_postings_fact
FROM 'C:/Users/machu/Downloads/all_folders/csv_files/job_postings_fact.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY skills_job_dim
FROM 'C:/Users/machu/Downloads/all_folders/csv_files/skills_job_dim.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

SELECT COUNT(*) FROM company_dim;
SELECT COUNT(*) FROM job_postings_fact;
SELECT COUNT(*) FROM skills_dim;
SELECT COUNT(*) FROM skills_job_dim;

