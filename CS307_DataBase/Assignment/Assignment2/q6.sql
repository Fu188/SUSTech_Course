select count(*) count
from (
      (select distinct peopleid
       from (select distinct p.peopleid t1, c.movieid t2
             from credits c
                      join movies m on c.movieid = m.movieid
                      join people p on c.peopleid = p.peopleid
             where p.surname = 'Liu'
               and p.first_name = 'Yifei')
                join credits c on c.movieid = t2
       where c.credited_as = 'A'
         and c.peopleid <> t1));