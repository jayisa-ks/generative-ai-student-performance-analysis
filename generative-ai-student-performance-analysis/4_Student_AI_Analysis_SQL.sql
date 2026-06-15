create database DATA_Analysis;
use Data_Analysis;
select count(*) from student_ai_analysis;
-- Q1: Which AI usage group achieved the highest academic improvement?
SELECT
    AI_Usage_Group,
    ROUND(AVG(GPA_Improvement), 2) AS Avg_GPA_Improvement
FROM student_ai_analysis
GROUP BY AI_Usage_Group
ORDER BY Avg_GPA_Improvement DESC;

-- Q2: Which academic major benefited most from AI adoption?
SELECT
    Major_Category,
    ROUND(AVG(GPA_Improvement), 2) AS Avg_GPA_Improvement
FROM student_ai_analysis
GROUP BY Major_Category
ORDER BY Avg_GPA_Improvement DESC;

-- Q3: Does prompt engineering skill influence academic performance?
SELECT Prompt_Engineering_Skill,
       ROUND(AVG(GPA_Improvement),2) AS Avg_GPA_Improvement
FROM student_ai_analysis
GROUP BY Prompt_Engineering_Skill
ORDER BY Avg_GPA_Improvement DESC;

-- Q4 Does AI dependency affect skill retention?
SELECT Perceived_AI_Dependency,
       ROUND(AVG(Skill_Retention_Score),2) AS Avg_Skill_Retention
FROM student_ai_analysis
GROUP BY Perceived_AI_Dependency
ORDER BY Perceived_AI_Dependency;

-- Q5: Does AI usage affect traditional study habits?
SELECT AI_Usage_Group,
       ROUND(AVG(Traditional_Study_Hours),2) AS Avg_Study_Hours
FROM student_ai_analysis
GROUP BY AI_Usage_Group
ORDER BY Avg_Study_Hours DESC;

-- Q6: Does AI usage influence anxiety during exams?
SELECT AI_Usage_Group,
       ROUND(AVG(Anxiety_Level_During_Exams),2) AS Avg_Anxiety
FROM student_ai_analysis
GROUP BY AI_Usage_Group
ORDER BY Avg_Anxiety DESC;

-- Q7: Do paid AI subscriptions improve academic performance?
SELECT Paid_Subscription,
       ROUND(AVG(GPA_Improvement),2) AS Avg_GPA_Improvement
FROM student_ai_analysis
GROUP BY Paid_Subscription;

-- Q8: Which primary use case of AI leads to the highest GPA improvement?
SELECT Primary_Use_Case,
       ROUND(AVG(GPA_Improvement),2) AS Avg_GPA_Improvement
FROM student_ai_analysis
GROUP BY Primary_Use_Case
ORDER BY Avg_GPA_Improvement DESC;

-- Q9: Which combination of AI Usage Group and Prompt Engineering Skill performs best?
SELECT AI_Usage_Group,
       Prompt_Engineering_Skill,
       ROUND(AVG(GPA_Improvement),2) AS Avg_GPA_Improvement
FROM student_ai_analysis
GROUP BY AI_Usage_Group, Prompt_Engineering_Skill
ORDER BY Avg_GPA_Improvement DESC


