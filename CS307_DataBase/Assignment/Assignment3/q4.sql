select ld.line_id    line_id,
       ld.station_id station_id,
       sub.cnt       cnt,
       rank() over (partition by line_id order by sub.cnt DESC )
from (
         select bl.station_id station_id, count(*) cnt
         from bus_lines bl
         group by bl.station_id
         having count(*) >= 10
     ) sub
         join line_detail ld on ld.station_id = sub.station_id
order by line_id ASC, sub.cnt ASC, ld.station_id DESC
limit 10
offset
15;