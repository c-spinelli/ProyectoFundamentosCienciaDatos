DROP TABLE students;

CREATE TABLE students (
id INT PRIMARY KEY AUTO_INCREMENT,
hours_studied INT,
attendance INT,
parental_involvement VARCHAR(10),
access_to_resources VARCHAR(10),
extracurricular_activities VARCHAR(10),
sleep_hours INT,
previous_scores INT,
motivation_level VARCHAR(10),
internet_access VARCHAR(10),
tutoring_sessions INT,
family_income VARCHAR(10),
teacher_quality VARCHAR(10),
school_type VARCHAR(24),
peer_influence VARCHAR(24),
physical_activity INT,
learning_disabilities VARCHAR(10),
parental_education_level VARCHAR(24),
distance_from_home VARCHAR(24),
gender VARCHAR(10),
exam_score INT
);

--la carga de datos se hizo utilizando la opcion de importar datos de dbeaver
--pero tambien se podria haber usando el comando LOAD DATA INFILE 'path/to/csv' INTO table students

SELECT * FROM students s;

SELECT id, attendance ,sleep_hours , hours_studied, previous_scores, exam_score FROM students s WHERE exam_score > 85;

SELECT AVG(exam_score) FROM students s WHERE attendance > 95;

SELECT AVG(exam_score) FROM students s WHERE internet_access = 'No';

SELECT COUNT(*) FROM students s WHERE (exam_score < previous_scores);

SELECT id, attendance, hours_studied, tutoring_sessions, sleep_hours, previous_scores, exam_score FROM students s WHERE (exam_score < previous_scores);

SELECT tutoring_sessions , AVG(exam_score) from students s GROUP BY tutoring_sessions;


