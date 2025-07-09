-- Data Profiling

USE JobMarketDB;

-- Number of columns in each table
SELECT 
    TABLE_NAME,
    COUNT(*) AS ColumnCount
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_CATALOG = 'JobMarketDB'
GROUP BY TABLE_NAME;

-- Data types and column properties
SELECT 
    TABLE_NAME, 
    COLUMN_NAME, 
    DATA_TYPE, 
    CHARACTER_MAXIMUM_LENGTH,
    IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_CATALOG = 'JobMarketDB'
ORDER BY TABLE_NAME, ORDINAL_POSITION;

-- Number of rows in the Jobs table
SELECT COUNT(*) AS TotalRows FROM Jobs;

-- Number of rows in the Skills table
SELECT COUNT(*) AS TotalRows FROM Skills;

-- Detect the number of NULL values ​​in each column of the Jobs table
SELECT 
    SUM(CASE WHEN CompanyID          IS NULL THEN 1 ELSE 0 END) AS Null_CompanyID,
    SUM(CASE WHEN GovernorateID      IS NULL THEN 1 ELSE 0 END) AS Null_GovernorateID,
    SUM(CASE WHEN JobTypeID          IS NULL THEN 1 ELSE 0 END) AS Null_JobTypeID,
    SUM(CASE WHEN Salary             IS NULL THEN 1 ELSE 0 END) AS Null_Salary,
    SUM(CASE WHEN PostedDate         IS NULL THEN 1 ELSE 0 END) AS Null_PostedDate,
    SUM(CASE WHEN ExperienceLevelID  IS NULL THEN 1 ELSE 0 END) AS Null_ExperienceLevelID
FROM Jobs;

-- Statistical summary of Jobs table
SELECT 
    COUNT(*) AS TotalJobs,
    MIN(Salary) AS MinSalary,
    MAX(Salary) AS MaxSalary,
    MIN(YearsOfExperience) AS MinExp,
    MAX(YearsOfExperience) AS MaxExp
FROM Jobs;

-- Is there illogical repetition in the Jobs or not?
SELECT 
    JobTitle, 
    COUNT(*) AS Frequency
FROM Jobs
GROUP BY JobTitle
ORDER BY Frequency DESC;

-- Number of skills associated with each job
SELECT 
    j.JobTitle,
    COUNT(js.SkillID) AS SkillCount
FROM Jobs j
LEFT JOIN JobSkills js ON j.JobID = js.JobID
GROUP BY j.JobTitle
ORDER BY SkillCount DESC;