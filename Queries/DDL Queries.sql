-- DDL Queries File

CREATE DATABASE JobMarketDB;

USE JobMarketDB;

CREATE TABLE Companies (
    CompanyID INT IDENTITY(1,1) PRIMARY KEY,
    CompanyName VARCHAR(100) UNIQUE NOT NULL,
    CompanySize VARCHAR(50) CHECK (CompanySize IN ('Small', 'Medium', 'Large'))
);

CREATE TABLE Governorates (
    GovernorateID INT IDENTITY(1,1) PRIMARY KEY,
    GovernorateName VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE JobTypes (
    JobTypeID INT IDENTITY(1,1) PRIMARY KEY,
    TypeName VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE ExperienceLevels (
    LevelID INT IDENTITY(1,1) PRIMARY KEY,
    LevelName VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE Jobs (
    JobID INT IDENTITY(1,1) PRIMARY KEY,
    JobTitle VARCHAR(100) NOT NULL,
    JobDescription NVARCHAR(MAX) NOT NULL,
    CompanyID INT FOREIGN KEY REFERENCES Companies(CompanyID),
    GovernorateID INT FOREIGN KEY REFERENCES Governorates(GovernorateID),
    JobTypeID INT FOREIGN KEY REFERENCES JobTypes(JobTypeID),
    Salary INT CHECK(Salary >= 0),
    PostedDate DATE DEFAULT GETDATE() CHECK (PostedDate <= GETDATE()),
    ExperienceLevelID INT FOREIGN KEY REFERENCES ExperienceLevels(LevelID),
    YearsOfExperience INT CHECK(YearsOfExperience >= 0) NOT NULL
);

CREATE TABLE Skills (
    SkillID INT IDENTITY(1,1) PRIMARY KEY,
    SkillName VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE JobSkills (
    JobID INT,
    SkillID INT,
    PRIMARY KEY(JobID, SkillID),
    FOREIGN KEY(JobID) REFERENCES Jobs(JobID),
    FOREIGN KEY(SkillID) REFERENCES Skills(SkillID)
);