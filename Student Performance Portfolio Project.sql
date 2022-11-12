------------------------------------------------------------------------------------------------------
------------------------------------------- DATA PROFILING -------------------------------------------
------------------------------------------------------------------------------------------------------
-- Looking All The Data from The Table
SELECT *
FROM StudentPerformancePortfolioProject..StudentsPerformance

-- Counting How Many Rows in The Table
SELECT COUNT(*) AS ROW_NUM
FROM StudentPerformancePortfolioProject..StudentsPerformance

-- Showing The Data Type For Every Column
SELECT COLUMN_NAME, DATA_TYPE
FROM StudentPerformancePortfolioProject.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'StudentsPerformance'

------------------------------------------------------------------------------------------------------
------------------------------------------- DATA CLEANSING -------------------------------------------
------------------------------------------------------------------------------------------------------
-- Gender Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The Gender Column
SELECT gender
FROM StudentPerformancePortfolioProject..StudentsPerformance

-- Checking Missing Value on Gender Column
SELECT *
FROM StudentPerformancePortfolioProject..StudentsPerformance
WHERE gender is null

------------------------------------------------------------------------------------------------------
-- Race/Ethnicity Column
~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The Race/Ethnicity Column
SELECT [race/ethnicity]
FROM StudentPerformancePortfolioProject..StudentsPerformance

-- Checking Missing Value on Race/Ethnicity Column
SELECT *
FROM StudentPerformancePortfolioProject..StudentsPerformance
WHERE [race/ethnicity] is null

------------------------------------------------------------------------------------------------------
-- Parental Level of Education Column
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The Parental Level of Education Column
SELECT [parental level of education]
FROM StudentPerformancePortfolioProject..StudentsPerformance

-- Checking Missing Value on Parental Level of Education Column
SELECT *
FROM StudentPerformancePortfolioProject..StudentsPerformance
WHERE [parental level of education] is null

------------------------------------------------------------------------------------------------------
-- Lunch Column
~~~~~~~~~~~~~~~~~~~~
-- Checking The Lunch Column
SELECT lunch
FROM StudentPerformancePortfolioProject..StudentsPerformance

-- Checking Missing Value on Lunch Column
SELECT *
FROM StudentPerformancePortfolioProject..StudentsPerformance
WHERE lunch is null

------------------------------------------------------------------------------------------------------
-- Test Preparation Column
~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The Test Preparation Column
SELECT [test preparation course]
FROM StudentPerformancePortfolioProject..StudentsPerformance

-- Checking Missing Value on Test Preparation Column
SELECT *
FROM StudentPerformancePortfolioProject..StudentsPerformance
WHERE [test preparation course] is null

------------------------------------------------------------------------------------------------------
-- Math Score Column
~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The Math Score Column
SELECT [math score]
FROM StudentPerformancePortfolioProject..StudentsPerformance

-- Transforming The Values on Math Score Column 
SELECT [math score]	
, (CASE WHEN [math score] BETWEEN 90 AND 100 THEN 'A'
WHEN [math score] BETWEEN 80 AND 89 THEN 'B'
WHEN [math score] BETWEEN 70 AND 79 THEN 'C'
WHEN [math score] BETWEEN 60 AND 69 THEN 'D'
ELSE 'E'
END) AS math_score
FROM StudentPerformancePortfolioProject..StudentsPerformance

ALTER TABLE StudentPerformancePortfolioProject..StudentsPerformance
ALTER COLUMN [math score] nvarchar (255)

UPDATE StudentPerformancePortfolioProject..StudentsPerformance
SET [math score] = CASE WHEN [math score] BETWEEN 90 AND 100 THEN 'A'
WHEN [math score] BETWEEN 80 AND 89 THEN 'B'
WHEN [math score] BETWEEN 70 AND 79 THEN 'C'
WHEN [math score] BETWEEN 60 AND 69 THEN 'D'
ELSE 'E'
END

-- Checking Missing Value on Math Score Column
SELECT *
FROM StudentPerformancePortfolioProject..StudentsPerformance
WHERE [math score] is null

-- Checking The Unique Value on Math Score Column
SELECT [math score]
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY [math score]
ORDER BY [math score]


------------------------------------------------------------------------------------------------------
-- Reading Score Column
~~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The Reading Score Column
SELECT [reading score]
FROM StudentPerformancePortfolioProject..StudentsPerformance

-- Transforming The Values on Reading Score Column 
SELECT [reading score]	
, (CASE WHEN [reading score] BETWEEN 90 AND 100 THEN 'A'
WHEN [reading score] BETWEEN 80 AND 89 THEN 'B'
WHEN [reading score] BETWEEN 70 AND 79 THEN 'C'
WHEN [reading score] BETWEEN 60 AND 69 THEN 'D'
ELSE 'E'
END) AS reading_score
FROM StudentPerformancePortfolioProject..StudentsPerformance

ALTER TABLE StudentPerformancePortfolioProject..StudentsPerformance
ALTER COLUMN [reading score] nvarchar (255)

UPDATE StudentPerformancePortfolioProject..StudentsPerformance
SET [reading score] = CASE WHEN [reading score] BETWEEN 90 AND 100 THEN 'A'
WHEN [reading score] BETWEEN 80 AND 89 THEN 'B'
WHEN [reading score] BETWEEN 70 AND 79 THEN 'C'
WHEN [reading score] BETWEEN 60 AND 69 THEN 'D'
ELSE 'E'
END

-- Checking Missing Value on Reading Score Column
SELECT *
FROM StudentPerformancePortfolioProject..StudentsPerformance
WHERE [reading score] is null

-- Checking The Unique Value on Reading Score Column
SELECT [reading score]
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY [reading score]
ORDER BY [reading score]


------------------------------------------------------------------------------------------------------
-- Writing Score Column
~~~~~~~~~~~~~~~~~~~~~~~~
-- Checking The Writing Score Column
SELECT [writing score]
FROM StudentPerformancePortfolioProject..StudentsPerformance

-- Transforming The Values on Writing Score Column 
SELECT [writing score]	
, (CASE WHEN [writing score] BETWEEN 90 AND 100 THEN 'A'
WHEN [writing score] BETWEEN 80 AND 89 THEN 'B'
WHEN [writing score] BETWEEN 70 AND 79 THEN 'C'
WHEN [writing score] BETWEEN 60 AND 69 THEN 'D'
ELSE 'E'
END) AS writing_score
FROM StudentPerformancePortfolioProject..StudentsPerformance

ALTER TABLE StudentPerformancePortfolioProject..StudentsPerformance
ALTER COLUMN [writing score] nvarchar (255)

UPDATE StudentPerformancePortfolioProject..StudentsPerformance
SET [writing score] = CASE WHEN [writing score] BETWEEN 90 AND 100 THEN 'A'
WHEN [writing score] BETWEEN 80 AND 89 THEN 'B'
WHEN [writing score] BETWEEN 70 AND 79 THEN 'C'
WHEN [writing score] BETWEEN 60 AND 69 THEN 'D'
ELSE 'E'
END

-- Checking Missing Value on Writing Score Column
SELECT *
FROM StudentPerformancePortfolioProject..StudentsPerformance
WHERE [writing score] is null

-- Checking The Unique Value on Writing Score Column
SELECT [writing score]
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY [writing score]
ORDER BY [writing score]


------------------------------------------------------------------------------------------------------
------------------------------------------ DATA EXPLORATION ------------------------------------------
------------------------------------------------------------------------------------------------------
-- Checking To See If Students Are Passed in Math Subjects
SELECT [math score],
CASE WHEN [math score] like 'A' OR [math score] like 'B' OR [math score] like 'C' THEN 'Passed'
ELSE 'Not Passed'
END
FROM StudentPerformancePortfolioProject..StudentsPerformance

ALTER TABLE StudentPerformancePortfolioProject..StudentsPerformance
ADD result_math_score nvarchar (255)

UPDATE StudentPerformancePortfolioProject..StudentsPerformance
SET result_math_score = CASE WHEN [math score] like 'A' OR [math score] like 'B' OR [math score] like 'C' THEN 'Passed'
ELSE 'Not Passed'
END

-- Checking To See The Number of Students Who Are Passed in Math Subjects
SELECT result_math_score, COUNT(result_math_score) Amount
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY result_math_score
ORDER BY result_math_score

------------------------------------------------------------------------------------------------------
-- Checking To See If Students Are Passed in Reading Subjects
SELECT [reading score],
CASE WHEN [reading score] like 'A' OR [reading score] like 'B' OR [reading score] like 'C' THEN 'Passed'
ELSE 'Not Passed'
END
FROM StudentPerformancePortfolioProject..StudentsPerformance

ALTER TABLE StudentPerformancePortfolioProject..StudentsPerformance
ADD result_reading_score nvarchar (255)

UPDATE StudentPerformancePortfolioProject..StudentsPerformance
SET result_reading_score = CASE WHEN [reading score] like 'A' OR [reading score] like 'B' OR [reading score] like 'C' THEN 'Passed'
ELSE 'Not Passed'
END

-- Checking To See The Number of Students Who Are Passed in Reading Subjects
SELECT result_reading_score, COUNT(result_reading_score) Amount
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY result_reading_score
ORDER BY result_reading_score

------------------------------------------------------------------------------------------------------
-- Checking To See If Students Are Passed in Writing Subjects
SELECT [writing score],
CASE WHEN [writing score] like 'A' OR [writing score] like 'B' OR [writing score] like 'C' THEN 'Passed'
ELSE 'Not Passed'
END
FROM StudentPerformancePortfolioProject..StudentsPerformance

ALTER TABLE StudentPerformancePortfolioProject..StudentsPerformance
ADD result_writing_score nvarchar (255)

UPDATE StudentPerformancePortfolioProject..StudentsPerformance
SET result_writing_score = CASE WHEN [writing score] like 'A' OR [writing score] like 'B' OR [writing score] like 'C' THEN 'Passed'
ELSE 'Not Passed'
END

-- Checking To See The Number of Students Who Are Passed in Writing Subjects
SELECT result_writing_score, COUNT(result_writing_score) Amount
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY result_writing_score
ORDER BY result_writing_score

------------------------------------------------------------------------------------------------------
-- Checking To See If Students Are Passed in All Subjects
SELECT result_math_score, result_reading_score, result_writing_score
, CASE WHEN [math score] like 'Passed' AND [reading score] like 'Passed' AND [writing score] like 'Passed' THEN 'Passed'
ELSE 'Not Passed'
END
FROM StudentPerformancePortfolioProject..StudentsPerformance

ALTER TABLE StudentPerformancePortfolioProject..StudentsPerformance
ADD overall_score nvarchar (255)

UPDATE StudentPerformancePortfolioProject..StudentsPerformance
SET overall_score = CASE WHEN [writing score] like 'A' OR [writing score] like 'B' OR [writing score] like 'C' THEN 'Passed'
ELSE 'Not Passed'
END

-- Checking To See The Number of Students Who Are Passed in All Subjects
SELECT overall_score, COUNT(overall_score) Amount
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY overall_score
ORDER BY overall_score

------------------------------------------------------------------------------------------------------
-- Checking The Number of Students Based on The Gender
DROP TABLE IF EXISTS #StudentGender
CREATE TABLE #StudentGender
(
Gender nvarchar(255),
Amount_of_Student float
)

INSERT INTO #StudentGender
SELECT gender, COUNT(gender)
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY gender

SELECT *
FROM #StudentGender
ORDER BY gender

-- Checking The Percentage of Students Based on The Gender
SELECT gender, ROUND((Amount_of_Student/1000)*100,2) Percentage_of_Student
FROM #StudentGender
ORDER BY gender

-- Checking The Number of Students Based on The Gender Who Are Passed in All Subjects
DROP TABLE IF EXISTS #PassedGender
CREATE TABLE #PassedGender
(
Gender nvarchar(255),
Overall_Score nvarchar(255),
Amount_of_Student_Passed float
)

INSERT INTO #PassedGender
SELECT gender, overall_score, COUNT(gender)
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY gender, overall_score

SELECT *
FROM #PassedGender
ORDER BY gender, overall_score

-- Checking The Percentage of Students Based on The Gender Who Are Passed in All Subjects
SELECT a.gender, a.Amount_of_Student, b.Overall_Score, b.Amount_of_Student_Passed
, ROUND((b.Amount_of_Student_Passed/a.Amount_of_Student)*100, 2) AS Percentage_of_Students_Passed_Based_on_Gender
, ROUND((b.Amount_of_Student_Passed/1000)*100, 2) AS Overall_Percentage_of_Students_Passed
FROM #StudentGender a
JOIN #PassedGender b
ON a.Gender = b.Gender
ORDER BY b.Overall_Score, a.gender

------------------------------------------------------------------------------------------------------
-- Checking The Number of Students Based on The Race/Ethnicity
DROP TABLE IF EXISTS #StudentRace
CREATE TABLE #StudentRace
(
Race nvarchar(255),
Amount_of_Student float
)

INSERT INTO #StudentRace
SELECT [race/ethnicity], COUNT([race/ethnicity])
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY [race/ethnicity]

SELECT *
FROM #StudentRace
ORDER BY Race

-- Checking The Percentage of Students Based on The Race/Ethnicity
SELECT Race, ROUND((Amount_of_Student/1000)*100,2) Percentage_of_Student
FROM #StudentRace
ORDER BY Race

-- Checking The Number of Students Based on The Race/Ethnicity Who Are Passed in All Subjects
DROP TABLE IF EXISTS #PassedRace
CREATE TABLE #PassedRace
(
Race nvarchar(255),
Overall_Score nvarchar(255),
Amount_of_Student_Passed float
)

INSERT INTO #PassedRace
SELECT [race/ethnicity], overall_score, COUNT([race/ethnicity])
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY [race/ethnicity], overall_score

SELECT *
FROM #PassedRace
ORDER BY Overall_Score, Race

-- Checking The Percentage of Students Based on The Race/Ethnicity Who Are Passed in All Subjects
SELECT a.Race, a.Amount_of_Student, b.Overall_Score, b.Amount_of_Student_Passed
, ROUND((b.Amount_of_Student_Passed/a.Amount_of_Student)*100, 2) AS Percentage_of_Students_Passed_Based_on_Race
, ROUND((b.Amount_of_Student_Passed/1000)*100, 2) AS Overall_Percentage_of_Students_Passed
FROM #StudentRace a
JOIN #PassedRace b
ON a.Race = b.Race
ORDER BY b.Overall_Score, a.Race

------------------------------------------------------------------------------------------------------
-- Checking The Number of Students Based on The Parental Level of Education
DROP TABLE IF EXISTS #StudentParent
CREATE TABLE #StudentParent
(
Parental_Level_of_Education nvarchar(255),
Amount_of_Student float
)

INSERT INTO #StudentParent
SELECT [parental level of education], COUNT([parental level of education])
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY [parental level of education]

SELECT *
FROM #StudentParent
ORDER BY Parental_Level_of_Education

-- Checking The Percentage of Students Based on The Parental Level of Education
SELECT Parental_Level_of_Education, ROUND((Amount_of_Student/1000)*100,2) Percentage_of_Student
FROM #StudentParent
ORDER BY Parental_Level_of_Education

-- Checking The Number of Students Based on The Parental Level of Education Who Are Passed in All Subjects
DROP TABLE IF EXISTS #PassedParent
CREATE TABLE #PassedParent
(
Parental_Level_of_Education nvarchar(255),
Overall_Score nvarchar(255),
Amount_of_Student_Passed float
)

INSERT INTO #PassedParent
SELECT [parental level of education], overall_score, COUNT([parental level of education])
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY overall_score, [parental level of education]

SELECT *
FROM #PassedParent
ORDER BY overall_score, Parental_Level_of_Education

-- Checking The Percentage of Students Based on The Parental Level of Education Who Are Passed in All Subjects
SELECT a.Parental_Level_of_Education, a.Amount_of_Student, b.Overall_Score, b.Amount_of_Student_Passed
, ROUND((b.Amount_of_Student_Passed/a.Amount_of_Student)*100, 2) AS Percentage_of_Students_Passed_Based_on_Parental_Level_of_Education
, ROUND((b.Amount_of_Student_Passed/1000)*100, 2) AS Overall_Percentage_of_Students_Passed
FROM #StudentParent a
JOIN #PassedParent b
ON a.Parental_Level_of_Education = b.Parental_Level_of_Education
ORDER BY b.Overall_Score, a.Parental_Level_of_Education

------------------------------------------------------------------------------------------------------
-- Checking The Number of Students Based on The Lunch
DROP TABLE IF EXISTS #StudentLunch
CREATE TABLE #StudentLunch
(
Lunch nvarchar(255),
Amount_of_Student float
)

INSERT INTO #StudentLunch
SELECT lunch, COUNT(lunch)
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY lunch

SELECT *
FROM #StudentLunch
ORDER BY lunch

-- Checking The Percentage of Students Based on The Lunch
SELECT lunch, ROUND((Amount_of_Student/1000)*100,2) Percentage_of_Student
FROM #StudentLunch
ORDER BY lunch

-- Checking The Number of Students Based on The Lunch Who Are Passed in All Subjects
DROP TABLE IF EXISTS #PassedLunch
CREATE TABLE #PassedLunch
(
Lunch nvarchar(255),
Overall_Score nvarchar(255),
Amount_of_Student_Passed float
)

INSERT INTO #PassedLunch
SELECT lunch, overall_score, COUNT(lunch)
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY lunch, overall_score

SELECT *
FROM #PassedLunch
ORDER BY lunch, overall_score

-- Checking The Percentage of Students Based on The Lunch Who Are Passed in All Subjects
SELECT a.Lunch, a.Amount_of_Student, b.Overall_Score, b.Amount_of_Student_Passed
, ROUND((b.Amount_of_Student_Passed/a.Amount_of_Student)*100, 2) AS Percentage_of_Students_Passed_Based_on_Lunch
, ROUND((b.Amount_of_Student_Passed/1000)*100, 2) AS Overall_Percentage_of_Students_Passed
FROM #StudentLunch a
JOIN #PassedLunch b
ON a.Lunch = b.Lunch
ORDER BY b.Overall_Score, a.Lunch

------------------------------------------------------------------------------------------------------
-- Checking The Number of Students Based on The Test Preparation
DROP TABLE IF EXISTS #StudentPreparation
CREATE TABLE #StudentPreparation
(
Test_Preparation nvarchar(255),
Amount_of_Student float
)

INSERT INTO #StudentPreparation
SELECT [test preparation course], COUNT([test preparation course])
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY [test preparation course]

SELECT *
FROM #StudentPreparation
ORDER BY Test_Preparation

-- Checking The Percentage of Students Based on The Test Preparation
SELECT Test_Preparation, ROUND((Amount_of_Student/1000)*100,2) Percentage_of_Student
FROM #StudentPreparation
ORDER BY Test_Preparation

-- Checking The Number of Students Based on The Test Preparation Who Are Passed in All Subjects
DROP TABLE IF EXISTS #PassedPreparation
CREATE TABLE #PassedPreparation
(
Test_Preparation nvarchar(255),
Overall_Score nvarchar(255),
Amount_of_Student_Passed float
)

INSERT INTO #PassedPreparation
SELECT [test preparation course], overall_score, COUNT([test preparation course])
FROM StudentPerformancePortfolioProject..StudentsPerformance
GROUP BY [test preparation course], overall_score

SELECT *
FROM #PassedPreparation
ORDER BY overall_score, Test_Preparation

-- Checking The Percentage of Students Based on The Test Preparation Who Are Passed in All Subjects
SELECT a.Test_Preparation, a.Amount_of_Student, b.Overall_Score, b.Amount_of_Student_Passed
, ROUND((b.Amount_of_Student_Passed/a.Amount_of_Student)*100, 2) AS Percentage_of_Students_Passed_Based_on_Test_Preparation
, ROUND((b.Amount_of_Student_Passed/1000)*100, 2) AS Overall_Percentage_of_Students_Passed
FROM #StudentPreparation a
JOIN #PassedPreparation b
ON a.Test_Preparation = b.Test_Preparation
ORDER BY b.Overall_Score, a.Test_Preparation