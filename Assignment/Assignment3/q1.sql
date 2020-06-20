select station_id a_station
from line_detail
where line_id = 1
    except
select station_id a_station
from line_detail
where line_id = 2
order by a_station ASC;