ALTER TABLE depression_student_dataset
CHANGE COLUMN `Gender` gender VARCHAR(10),
CHANGE COLUMN `Age` age INT,
CHANGE COLUMN `Academic Pressure` academic_pressure VARCHAR(50),
CHANGE COLUMN `Study Satisfaction` study_satisfaction VARCHAR(50),
CHANGE COLUMN `Sleep Duration` sleep_duration VARCHAR(50),
CHANGE COLUMN `Dietary Habits` dietary_habits VARCHAR(50),
CHANGE COLUMN `Have you ever had suicidal thoughts ?` suicidal_thoughts VARCHAR(10),
CHANGE COLUMN `Study Hours` study_hours VARCHAR(50),
CHANGE COLUMN `Financial Stress` financial_stress VARCHAR(50),
CHANGE COLUMN `Family History of Mental Illness` family_history_mental_illness VARCHAR(10),
CHANGE COLUMN `Depression` depression VARCHAR(10),
CHANGE COLUMN `Age_Group` age_group VARCHAR(15);


---------------------------------------------------------------------------------------------------------
SELECT * FROM depression_student_dataset;

-- Gender Distribution
SELECT gender, COUNT(*) AS total
FROM depression_student_dataset
GROUP BY gender;

-- Academic Pressure
SELECT academic_pressure, COUNT(*) AS count
FROM depression_student_dataset
GROUP BY academic_pressure;

-- Study Satisfaction
SELECT study_satisfaction, COUNT(*) AS count
FROM depression_student_dataset
GROUP BY study_satisfaction;

-- Sleep Duration
SELECT sleep_duration, COUNT(*) AS count
FROM depression_student_dataset
GROUP BY sleep_duration;

-- Financial Stress vs Depression
SELECT financial_stress, depression, COUNT(*) AS total
FROM depression_student_dataset
GROUP BY financial_stress, depression;

-- Depression Percentage by Age Group
SELECT 
    age_group,
    COUNT(*) AS total_students,
    SUM(CASE WHEN depression = 'Yes' THEN 1 ELSE 0 END) AS depressed_count,
    ROUND(
        100.0 * SUM(CASE WHEN depression = 'Yes' THEN 1 ELSE 0 END) 
        / COUNT(*), 2
    ) AS depression_percentage
FROM depression_student_dataset
GROUP BY age_group
ORDER BY age_group;
------------------------------------------------------------
-- 8️⃣ Financial Stress vs Depression
------------------------------------------------------------

SELECT 
    financial_stress,
    depression,
    COUNT(*) AS total
FROM depression_student_dataset
GROUP BY financial_stress, depression
ORDER BY financial_stress;

------------------------------------------------------------
-- 9️⃣ High Risk Students (CTE - MySQL 8+)
------------------------------------------------------------

WITH high_risk_students AS (
    SELECT *
    FROM depression_student_dataset
    WHERE financial_stress = 'High'
    AND academic_pressure = 'High'
    AND depression = 'Yes'
)

SELECT COUNT(*) AS high_risk_count
FROM high_risk_students;
------------------------------------------------------------
