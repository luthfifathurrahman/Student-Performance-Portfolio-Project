# Student Performance in The Exams
## Business Understanding
1. How many students passed the math subject?
2. How many students of each gender passed the math subject?
3. How many students of each race/ethnicity passed the math subject?
4. How many students with each parental level of education passed the math subject?
5. How many students receiving each type of lunch passed the math subject?
6. How many students who completed or did not complete the test preparation course passed the math subject?
7. How many students passed the reading subject?
8. How many students of each gender passed the reading subject?
9. How many students of each race/ethnicity passed the reading subject?
10. How many students with each parental level of education passed the reading subject?
11. How many students receiving each type of lunch passed the reading subject?
12. How many students who completed or did not complete the test preparation course passed the reading subject?
13. How many students passed the writing subject?
14. How many students of each gender passed the writing subject?
15. How many students of each race/ethnicity passed the writing subject?
16. How many students with each parental level of education passed the writing subject?
17. How many students receiving each type of lunch passed the writing subject?
18. How many students who completed or did not complete the test preparation course passed the writing subject?
19. How many students passed all subjects (math, reading, and writing)?
20. How many students of each gender passed all subjects (math, reading, and writing)?
21. How many students of each race/ethnicity passed all subjects (math, reading, and writing)?
22. How many students with each parental level of education passed all subjects (math, reading, and writing)?
23. How many students receiving each type of lunch passed all subjects (math, reading, and writing)?
24. How many students who completed or did not complete the test preparation course passed all subjects (math, reading, and writing)?


## Data Understanding
- Data Source: https://www.kaggle.com/datasets/spscientist/students-performance-in-exams
- There are 1 dataset, which is:
  - Student Performance data: 8 columns and 1000 rows
    - gender: The gender of the student.
    - race/ethnicity: The self-identified race or ethnicity of the student.
    - parental level of education: The highest level of education attained by the student's parents.
    - lunch: The type of lunch the student receives, which may indicate socioeconomic status.
    - test preparation course: Indicates whether the student completed a test preparation course.
    - math score: The student's score on the mathematics section of a standardized test.
    - reading score: The student's score on the reading section of a standardized test.
    - writing score: The student's score on the writing section of a standardized test.
      
## Data Preparation
- Python Programming Language
- Packages: pandas, numpy, matplotlib, seaborn, regex, datetime

## Data Cleansing
### Telco Customer Data:
  - Renaming The Column's Name
  - Changing The Value in The Gender Column
  - Changing The Value in The Race/Ethnicity Column
  - Changing The Value in The Parent's Education Column
  - Changing The Value in The Lunch Column
  - Changing The Value in The Test Preparation Course Column
  - Creating The Math Passed Column (less than 70 is "Not Passed")
  - Creating The Reading Passed Column (less than 70 is "Not Passed")
  - Creating The Writing Passed Column (less than 70 is "Not Passed")
  - Creating The All Subject Passed Column

## Exploratory Data Analysis
1. How many students passed the math subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20passed%20the%20math%20subject.png)
   
2. How many students of each gender passed the math subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20of%20each%20gender%20passed%20the%20math%20subject.png)
   
3. How many students of each race/ethnicity passed the math subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20of%20each%20race%20ethnicity%20passed%20the%20math%20subject.png)
   
4. How many students with each parental level of education passed the math subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20with%20each%20parental%20level%20of%20education%20passed%20the%20math%20subject.png)
   
5. How many students receiving each type of lunch passed the math subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20receiving%20each%20type%20of%20lunch%20passed%20the%20math%20subject.png)
   
6. How many students who completed or did not complete the test preparation course passed the math subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20who%20completed%20or%20did%20not%20complete%20the%20test%20preparation%20course%20passed%20the%20math%20subject.png)
   
7. How many students passed the reading subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20passed%20the%20reading%20subject.png)
   
8. How many students of each gender passed the reading subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20of%20each%20gender%20passed%20the%20reading%20subject.png)
   
9. How many students of each race/ethnicity passed the reading subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20of%20each%20race%20ethnicity%20passed%20the%20reading%20subject.png)
   
10. How many students with each parental level of education passed the reading subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20with%20each%20parental%20level%20of%20education%20passed%20the%20reading%20subject.png)
   
11. How many students receiving each type of lunch passed the reading subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20receiving%20each%20type%20of%20lunch%20passed%20the%20reading%20subject.png)
   
12. How many students who completed or did not complete the test preparation course passed the reading subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20who%20completed%20or%20did%20not%20complete%20the%20test%20preparation%20course%20passed%20the%20reading%20subject.png)
   
13. How many students passed the writing subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20passed%20the%20writing%20subject.png)
   
14. How many students of each gender passed the writing subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20of%20each%20gender%20passed%20the%20writing%20subject.png)
   
15. How many students of each race/ethnicity passed the writing subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20of%20each%20race%20ethnicity%20passed%20the%20writing%20subject.png)
   
16. How many students with each parental level of education passed the writing subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20with%20each%20parental%20level%20of%20education%20passed%20the%20writing%20subject.png)
   
17. How many students receiving each type of lunch passed the writing subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20receiving%20each%20type%20of%20lunch%20passed%20the%20writing%20subject.png)
   
18. How many students who completed or did not complete the test preparation course passed the writing subject?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20who%20completed%20or%20did%20not%20complete%20the%20test%20preparation%20course%20passed%20the%20writing%20subject.png)
   
19. How many students passed all subjects (math, reading, and writing)?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20passed%20all%20subjects%20(math%2C%20reading%2C%20and%20writing).png)
   
20. How many students of each gender passed all subjects (math, reading, and writing)?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20of%20each%20gender%20passed%20all%20subjects%20(math%2C%20reading%2C%20and%20writing).png)
   
21. How many students of each race/ethnicity passed all subjects (math, reading, and writing)?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20of%20each%20race%20ethnicity%20passed%20all%20subjects%20(math%2C%20reading%2C%20and%20writing).png)
   
22. How many students with each parental level of education passed all subjects (math, reading, and writing)?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20with%20each%20parental%20level%20of%20education%20passed%20all%20subjects%20(math%2C%20reading%2C%20and%20writing).png)
   
23. How many students receiving each type of lunch passed all subjects (math, reading, and writing)?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20receiving%20each%20type%20of%20lunch%20passed%20all%20subjects%20(math%2C%20reading%2C%20and%20writing).png)
   
24. How many students who completed or did not complete the test preparation course passed all subjects (math, reading, and writing)?
   ![image](https://raw.githubusercontent.com/luthfifathurrahman/Student-Performance-in-The-Exams-Portfolio-Project/main/images/How%20many%20students%20who%20completed%20or%20did%20not%20complete%20the%20test%20preparation%20course%20passed%20all%20subjects%20(math%2C%20reading%2C%20and%20writing).png)
   
