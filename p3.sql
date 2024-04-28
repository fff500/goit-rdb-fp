SELECT DISTINCT
MIN(Number_rabies),
MAX(Number_rabies),
SUM(Number_rabies),
AVG(Number_rabies) as avg_rabies
from cases WHERE LENGTH(Number_rabies) > 0
GROUP BY country_id
ORDER BY avg_rabies DESC
LIMIT 10;