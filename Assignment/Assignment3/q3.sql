select sub.district district, count(*) number, rank() over (order by count(*) DESC) rank
from (
         select s.district, l.line_id, count(*)
         from line_detail l
                  join stations s on l.station_id = s.station_id
         where s.district <> ''
         group by l.line_id, s.district
     ) sub
group by sub.district;