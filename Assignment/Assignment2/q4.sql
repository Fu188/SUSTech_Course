select director
from (select distinct case m.country
                          when 'kr' then trim(p.surname || ' ' || coalesce(p.first_name, ' '))
                          when 'hk' then trim(p.surname || ' ' || coalesce(p.first_name, ' '))
                          else trim(coalesce(p.first_name, ' ') || ' ' || p.surname)
                          end as director,
                      p.peopleid
      from people p
               join credits c on p.peopleid = c.peopleid
               join movies m on c.movieid = m.movieid
      where c.credited_as = 'D'
        and m.year_released = 2016
        and m.country in ('kr', 'hk', 'gb', 'ph'))
order by director ASC;