with sub as (select movieid, count(*) c
             from credits
                      join people p on credits.peopleid = p.peopleid
             where credited_as = 'A'
               and p.born >= 2000
             group by movieid)
select distinct sub1.movieid, sub1.c cnt
from sub sub1
         join (
    select movieid, c, max(c) max
    from sub) sub2
where sub1.c = max;