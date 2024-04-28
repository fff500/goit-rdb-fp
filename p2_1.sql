CREATE TABLE IF NOT EXISTS countries (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	name VARCHAR(64) NOT NULL,
    code VARCHAR(12) NOT NULL
);

INSERT INTO countries (name, code)
SELECT Entity, Code 
FROM cases 
GROUP BY Entity, Code;

SELECT * FROM countries;