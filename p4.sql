SELECT
	MAKEDATE(Year, 1) AS first_january,
	CURDATE() AS today,
    TIMESTAMPDIFF(YEAR, MAKEDATE(Year, 1), CURDATE()) AS years_diff
FROM cases;