select distinct title, country, year_released
from movies
where country <> 'us'
  and year_released = 1991
  and title like 'The%';