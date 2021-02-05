select round(100.0 * sum(country = 'us') / count(distinct movieid), 2) us_percent
from movies
where year_released between 1970 and 1979;