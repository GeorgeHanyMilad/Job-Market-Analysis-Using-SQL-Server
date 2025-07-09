-- DML Queries File

USE JobMarketDB;

INSERT INTO Companies (CompanyName, CompanySize)
VALUES
('Valeo Egypt', 'Large'),
('Microsoft Egypt', 'Large'),
('ITWorx', 'Medium'),
('Vodafone Egypt', 'Large'),
('Orange Digital Center', 'Large'),
('Etisalat Misr', 'Large'),
('Sumerge', 'Medium'),
('Instabug', 'Medium'),
('Raya Information Technology', 'Large'),
('Dxwand', 'Small'),
('Trend Micro Egypt', 'Large'),
('Synapse Analytics', 'Small'),
('Link Development', 'Medium'),
('SWVL', 'Large'),
('Robusta Studio', 'Medium');

INSERT INTO Governorates (GovernorateName)
VALUES
('Cairo'),
('Giza'),
('Alexandria'),
('Fayoum'),
('Assiut'),
('Mansoura'),
('Menoufia'),
('Aswan'),
('Tanta'),
('Qena'),
('Sohag'),
('Beni Suef'),
('Dumyat'),
('Suez'),
('Ismailia'),
('10th of Ramadan'),
('Port Said'),
('Sharqia'),
('Kafr El-Sheikh'),
('Beheira');
SELECT TOP 12 SkillID, SkillName
FROM Skills
ORDER BY SkillID;

INSERT INTO JobTypes (TypeName)
VALUES
('Full-time'),
('Part-time'),
('Remote'),
('Hybrid');

INSERT INTO ExperienceLevels (LevelName)
VALUES
('Junior'),
('Mid'),
('Senior');

INSERT INTO Jobs (
    JobTitle,
    JobDescription,
    CompanyID,
    GovernorateID,
    JobTypeID,
    Salary,
    PostedDate,
    ExperienceLevelID,
    YearsOfExperience
)
VALUES
('Front-End Developer', 'Build responsive interfaces using HTML, CSS, JavaScript, and React.', 1, 1, 1, 13000, '2025-06-01', 2, 2),
('Back-End Developer', 'Develop RESTful APIs and manage databases using Node.js and PostgreSQL.', 2, 1, 4, 15000, '2025-06-05', 2, 3),
('Data Analyst', 'Analyze business data using SQL, Excel, and Power BI.', 1, 1, 1, 12000, '2025-06-18', 2, 2),
('Cybersecurity Analyst', 'Monitor network traffic and detect potential threats.', 1, 1, 4, 17000, '2025-07-02', 2, 3),
('Full-Stack Developer', 'Handle both front-end and back-end development with MERN stack.', 3, 3, 1, 17000, '2025-06-10', 3, 4),
('UI/UX Designer', 'Design user interfaces and user journeys using Figma.', 3, 3, 3, 13500, '2025-07-03', 2, 2),
('Mobile App Developer', 'Create cross-platform apps using Flutter and Dart.', 4, 2, 2, 14000, '2025-06-15', 2, 2),
('DevOps Engineer', 'Automate deployment pipelines using Docker and Jenkins.', 4, 2, 1, 20000, '2025-07-03', 3, 5),
('Embedded Systems Engineer', 'Develop software for microcontrollers in automotive systems.', 8, 5, 3, 17500, '2025-07-03', 3, 5),
('AI Engineer', 'Build NLP and computer vision models using deep learning.', 9, 4, 3, 21000, '2025-07-01', 3, 5),
('Business Intelligence Developer', 'Support BI team in creating reports and dashboards using Power BI and writing basic DAX queries.', 2, 1, 1, 11500, '2025-06-25', 1, 1),
('Penetration Tester', 'Assist in conducting security assessments and identifying basic vulnerabilities under supervision.', 2, 1, 2, 11500, '2025-07-03', 1, 1),
('Cloud Engineer', 'Assist in managing cloud infrastructure and basic automation on AWS and Azure.', 5, 1, 3, 12000, '2025-07-03', 1, 1),
('Machine Learning Engineer', 'Train and deploy ML models using TensorFlow and FastAPI.', 6, 6, 1, 20000, '2025-06-28', 3, 4),
('Security Engineer', 'Implement security policies and monitor systems.', 6, 6, 1, 19500, '2025-07-03', 3, 5),
('Network Engineer', 'Configure routers, switches, and firewalls in enterprise networks.', 7, 7, 4, 16000, '2025-07-03', 3, 4),
('Data Engineer', 'Design ETL pipelines and manage data lakes using PySpark.', 10, 8, 3, 19000, '2025-07-01', 3, 4),
('Data Scientist', 'Build predictive models using Python, pandas, and scikit-learn.', 6, 4, 1, 18000, '2025-06-22', 3, 3);

INSERT INTO Skills (SkillName)
VALUES
('HTML'),
('CSS'),
('JavaScript'),
('React'),
('Vue.js'),
('Bootstrap'),
('Tailwind CSS'),
('Node.js'),
('Express.js'),
('PHP'),
('Laravel'),
('Python'),
('Django'),
('Flask'),
('Java'),
('Kotlin'),
('Swift'),
('C#'),
('C++'),
('SQL'),
('MySQL'),
('PostgreSQL'),
('MongoDB'),
('Power BI'),
('Tableau'),
('Excel'),
('Pandas'),
('NumPy'),
('Matplotlib'),
('Scikit-learn'),
('TensorFlow'),
('Keras'),
('PyTorch'),
('AWS'),
('Azure'),
('GCP'),
('Docker'),
('Kubernetes'),
('Git'),
('GitHub'),
('Linux'),
('Figma'),
('Adobe XD'),
('REST APIs'),
('CI/CD'),
('Firebase'),
('FastAPI'),
('ETL'),
('Jira'),
('Dart'),
('PySpark'),
('Airflow'),
('Selenium'),
('NLP'),
('Cisco'),
('TCP/IP'),
('RTOS'),
('Nessus'),
('Postman'),
('Agile Methodology'),
('Scrum'),
('Problem Solving'),
('Agile'),
('Flutter');

INSERT INTO JobSkills (JobID, SkillID)
VALUES
-- 1. Front-End Developer
(1, 1), (1, 2), (1, 3), (1, 4), (1, 6), (1, 7), (1, 39), (1, 40), 

-- 2. Back-End Developer
(2, 8), (2, 9), (2, 12), (2, 19), (2, 22), (2, 21), (2, 37), (2, 39), (2, 40), (2, 44),

-- 3. Full-Stack Developer
(3, 1), (3, 2), (3, 3), (3, 4), (3, 8), (3, 9), (3, 19), (3, 23), (3, 39), (3, 40),

-- 4. Mobile App Developer
(4, 15), (4, 16), (4, 17), (4, 18), (4, 45), (4, 46), (4, 49), (4, 50),

-- 5. Data Analyst
(5, 12), (5, 20), (5, 21), (5, 24), (5, 25), (5, 26), (5, 27), (5, 28), (5, 29), (5, 62),

-- 6. Data Scientist
(6, 12), (6, 27), (6, 28), (6, 29), (6, 30), (6, 31), (6, 32), (6, 33), (6, 62),

-- 7. BI Developer
(7, 24), (7, 23), (7, 25), (7, 60), (7, 62), (7, 20), (7, 26),

-- 8. ML Engineer
(8, 12), (8, 30), (8, 31), (8, 32), (8, 33), (8, 44), (8, 62),

-- 9. AI Engineer
(9, 12), (9, 27), (9, 28), (9, 29), (9, 30), (9, 31), (9, 32), (9, 33), (9, 54), (9, 62),

-- 10. Data Engineer
(10, 12), (10, 20), (10, 21), (10, 22), (10, 48), (10, 46), (10, 51), (10, 62),

-- 11. Cybersecurity Analyst
(11, 40), (11, 55), (11, 56), (11, 62), (11, 41),

-- 12. Penetration Tester
(12, 55), (12, 56), (12, 57), (12, 40), (12, 58), (12, 62),

-- 13. Security Engineer
(13, 55), (13, 40), (13, 56), (13, 58), (13, 62),

-- 14. DevOps Engineer
(14, 36), (14, 37), (14, 44), (14, 45), (14, 38),

-- 15. Cloud Engineer
(15, 33), (15, 34), (15, 35), (15, 36), (15, 38), (15, 45),

-- 16. UI/UX Designer
(16, 42), (16, 43), (16, 3), (16, 2),

-- 17. Network Engineer
(17, 55), (17, 56), (17, 41),

-- 18. Embedded Systems Engineer
(18, 18), (18, 19), (18, 57), (18, 41);


INSERT INTO JobSources (SourceName)
VALUES 
('LinkedIn'),
('Wuzzuf'),
('Forasna'),
('Glassdoor'),
('Company Website'),
('Referral'),
('Facebook Groups'),
('X (Twitter)'),
('Remote OK'),
('Job Fair');

INSERT INTO JobNotes (NoteContent)
VALUES
('Applied for the job and currently waiting for a response.'),
('This job requires strong skills in Python and SQL.'),
('The company is known for having an excellent work environment.'),
('An interview is scheduled for next week.'),
('The company offers salaries 15% higher than the market average.'),
('The job is suitable for fresh graduates.'),
('Experience with Git and GitHub is preferred.'),
('I contacted an employee who confirmed the application is still open.'),
('This is a fully remote position.'),
('Application was rejected, but I will practice more and reapply later.');