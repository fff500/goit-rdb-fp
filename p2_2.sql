ALTER TABLE cases 
ADD COLUMN country_id INT NOT NULL DEFAULT 0;

SET SQL_SAFE_UPDATES = 0;
UPDATE cases
INNER JOIN countries ON cases.Code = countries.code
SET cases.country_id = countries.id;
SET SQL_SAFE_UPDATES = 1;

ALTER TABLE cases
DROP COLUMN Entity,
DROP COLUMN Code;

ALTER TABLE cases
ADD CONSTRAINT fk_country_id FOREIGN KEY (country_id) REFERENCES countries(id);

SELECT * FROM cases;