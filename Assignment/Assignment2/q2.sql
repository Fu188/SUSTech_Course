select count(*) cnt
from (
         select count(distinct movieid)
         from credits
         where credited_as = 'A'
         group by peopleid
         having count(distinct movieid) > 30);