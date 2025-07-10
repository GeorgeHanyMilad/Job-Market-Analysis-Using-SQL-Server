-- Analysis Queries File

USE JobMarketDB;

-- What are the most hiring companies?
SELECT C.CompanyName, COUNT(J.JobID) AS JobCount
FROM Companies AS C
INNER JOIN Jobs AS J ON C.CompanyID = J.CompanyID
GROUP BY C.CompanyName
ORDER BY JobCount DESC;

-- Which governorates offer the most jobs?
SELECT G.GovernorateName, COUNT(J.JobID) AS JobCount
FROM Governorates AS G
INNER JOIN Jobs AS J ON G.GovernorateID = J.GovernorateID
GROUP BY G.GovernorateName
ORDER BY JobCount DESC;

-- What is the average salary based on experience level?
SELECT E.LevelName, AVG(J.Salary) AS AvgSalary
FROM ExperienceLevels AS E
INNER JOIN Jobs AS J ON E.LevelID = J.ExperienceLevelID
GROUP BY E.LevelName;

-- What are the most common types of jobs?
SELECT JT.TypeName, COUNT(J.JobID) AS JobCount
FROM JobTypes JT
INNER JOIN Jobs AS J ON JT.JobTypeID = J.JobTypeID
GROUP BY JT.TypeName
ORDER BY JobCount DESC;

-- What are the most in-demand skills in the job market?
SELECT S.SkillName, COUNT(JS.JobID) AS DemandCount
FROM Skills S
INNER JOIN JobSkills JS ON S.SkillID = JS.SkillID
GROUP BY S.SkillName
ORDER BY DemandCount DESC;

-- What are the most skilled jobs?
SELECT J.JobTitle, COUNT(JS.SkillID) AS SkillCount
FROM Jobs J
JOIN JobSkills JS ON J.JobID = JS.JobID
GROUP BY J.JobTitle
ORDER BY SkillCount DESC;

-- What are the most common job titles that require more than 7 different skills?
SELECT J.JobTitle, COUNT(JS.SkillID) AS SkillCount
FROM Jobs J
JOIN JobSkills JS ON J.JobID = JS.JobID
GROUP BY J.JobTitle
HAVING COUNT(JS.SkillID) > 7
ORDER BY SkillCount DESC;

-- Top 5 jobs by average salary?
SELECT TOP 5 JobTitle, AVG(Salary) AS AvgSalary
FROM Jobs
GROUP BY JobTitle
ORDER BY AvgSalary DESC;

-- Number of jobs per experience level as a percentage?
SELECT 
    E.LevelName,
    COUNT(*) AS CountPerLevel,
    CAST(CAST(ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Jobs), 0) AS INT) AS VARCHAR(100)) + '%' AS Percentage
FROM ExperienceLevels E
JOIN Jobs J ON E.LevelID = J.ExperienceLevelID
GROUP BY E.LevelName;

-- Which governorates have the highest average salaries?
SELECT G.GovernorateName, AVG(J.Salary) AS AvgSalary
FROM Governorates AS G
INNER JOIN Jobs AS J ON G.GovernorateID = J.GovernorateID
GROUP BY G.GovernorateName
ORDER BY AvgSalary DESC;

-- Which jobs require the highest number of years of experience?
SELECT JobTitle, YearsOfExperience
FROM Jobs
ORDER BY YearsOfExperience DESC;

-- Find all jobs with "Engineer" in the title
SELECT JobTitle FROM Jobs
WHERE JobTitle LIKE '%Engineer%';

-- Rank jobs by salary within each experience level
SELECT 
    J.JobTitle,
    E.LevelName,
    J.Salary,
    RANK() OVER (PARTITION BY E.LevelName ORDER BY J.Salary DESC) AS SalaryRank
FROM Jobs J
INNER JOIN ExperienceLevels E ON J.ExperienceLevelID = E.LevelID;

-- Count how many jobs were posted each month
SELECT 
    FORMAT(PostedDate, 'yyyy-MM') AS Month,
    COUNT(*) AS JobCount
FROM Jobs
GROUP BY FORMAT(PostedDate, 'yyyy-MM')
ORDER BY Month;

-- Top companies by average salary
SELECT C.CompanyName, AVG(J.Salary) AS AvgSalary
FROM Companies C
JOIN Jobs J ON C.CompanyID = J.CompanyID
GROUP BY C.CompanyName
ORDER BY AvgSalary DESC;

-- Divide salaries into categories
SELECT
    JobTitle,
    Salary,
    CASE
        WHEN Salary < 13000 THEN 'Low'
        WHEN Salary < 18000 THEN 'Medium'
        ELSE 'High'
    END AS SalaryCategory
FROM Jobs
ORDER BY Salary DESC;

-- What is the distribution of job types across different experience levels?
SELECT 
    E.LevelName,
    JT.TypeName,
    COUNT(J.JobID) AS JobCount
FROM Jobs J
JOIN ExperienceLevels E ON J.ExperienceLevelID = E.LevelID
JOIN JobTypes JT ON J.JobTypeID = JT.JobTypeID
GROUP BY E.LevelName, JT.TypeName
ORDER BY E.LevelName, JobCount DESC;