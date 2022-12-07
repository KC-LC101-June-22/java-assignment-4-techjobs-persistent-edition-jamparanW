-- Part 1: Test it with SQL
/* Two columns;
id = int (not nullable);
employer,
name,
skills = varchar(255) (nullable)*/
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE
	TABLE_SCHEMA = 'techjobs' AND
    TABLE_NAME = 'job'
-- Part 2: Test it with SQL
SELECT name FROM employer WHERE location = 'St. Louis City';
-- Part 3: Test it with SQL
DROP TABLE techjobs.job
-- Part 4: Test it with SQL
SELECT techjobs.skill.name
FROM techjobs.job_skills
INNER JOIN techjobs.skill
ON techjobs.skill.id = techjobs.job_skills.skills_id
ORDER BY techjobs.skill.name DESC;