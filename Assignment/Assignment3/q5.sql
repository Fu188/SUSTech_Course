select sub.district district, sub.chr chr, sub.cnt cnt
from (
         select district,
                substr(chinese_name, 1, 1)                                  chr,
                count(*)                                                    cnt,
                rank() over (partition by district order by count(*) DESC ) rank
         from stations
         where district <> ''
         group by district, substr(chinese_name, 1, 1)
     ) sub
where sub.rank = 1;