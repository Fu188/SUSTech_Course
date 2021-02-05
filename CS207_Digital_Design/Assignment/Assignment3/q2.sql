select s.district, count(*) as number, rank() over (order by count(*)) as rank
from line_detail l
         join stations s on l.station_id = s.station_id
where l.line_id = 1
group by s.district;