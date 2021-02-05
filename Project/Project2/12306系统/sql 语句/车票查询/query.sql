create or replace function query(dptStation varchar, arrStation varchar, dptDate date)
    returns table
            (
                train_no        varchar,
                train_id        int,
                dptStation_name varchar,
                dptTime         varchar,
                arrStation_name varchar,
                arrTime         varchar,
                excutionTime    varchar,
                first_price     numeric,
                second_price    numeric,
                first_remain    int,
                second_remain   int,
                station_no      varchar,
                station_name    varchar,
                arr_time        varchar,
                start_time      varchar,
                time_diff       varchar
            )
    language plpgsql
as
$$
DECLARE
    dptcode int;
    arrcode int;
    result  record;
BEGIN

    select (select s.code
            from station s
            where s.station_name = dptStation)
    into dptcode;

    select (select s.code
            from station s
            where s.station_name = arrStation)
    into arrcode;

    for result in (
        with train_number as (
            select t.train_id                                                                      train_id,
                   t.train_no                                                                      train_no,
                   s1.station_name                                                                 dptStation,
                   ts1.station_no                                                                  dptStation_no,
                   ts1.start_time                                                                  dptTime,
                   s2.station_name                                                                 arrStation,
                   ts2.station_no                                                                  arrStation_no,
                   ts2.arr_time                                                                    arrTime,
                   ts2.arr_day - ts1.arr_day                                                       arr_day,
                   round(cast(ts2.first_price as numeric) - cast(ts1.first_price as numeric), 2)   first_price,
                   round(cast(ts2.second_price as numeric) - cast(ts1.second_price as numeric), 2) second_price
            from train t
                     join train_station ts1 on t.train_id = ts1.train_id
                     join train_station ts2 on t.train_id = ts2.train_id
                     join station s1 on s1.code = dptcode and ts1.station_id = s1.station_id
                     join station s2 on s2.code = arrcode and ts2.station_id = s2.station_id
            where t.start_date + ts1.arr_day - 1 = dptDate
              and ts1.station_no < ts2.station_no)

        select *
        from (select tn.train_no          as train_no,
                     tn.train_id          as train_id,
                     tn.dptStation        as dptStation,
                     tn.dptTime           as dptTime,
                     tn.arrStation        as arrStation,
                     tn.arrTime           as arrTime,
                     to_char(tn.arrTime - tn.dptTime + (cast(tn.arr_day * 24 as text) || ' hour')::interval,
                             'HH24小时MI分') as excution_time,
                     x.first_remain       as first_remain,
                     tn.first_price       as first_price,
                     x.second_remain      as second_remain,
                     tn.second_price      as second_price
              from train_number tn
                       join (
                  select t.train_no, min(ts.first_remain) as first_remain, min(ts.second_remain) as second_remain
                  from train t
                           join train_number tn on t.train_id = tn.train_id
                           join train_station ts on t.train_id = ts.train_id
                  where ts.station_no between tn.dptStation_no and tn.arrStation_no
                  group by t.train_no) x on x.train_no = tn.train_no) sub
                 left join (
            select ts.station_no                               as station_no,
                   s.station_name                              as station_name,
                   to_char(ts.arr_time, 'HH24:MI')             as arr_time,
                   to_char(ts.start_time, 'HH24:MI')           as start_time,
                   to_char(ts.start_time - ts.arr_time, 'MI分') as time_diff,
                   ts.train_id                                 as train_id
            from train_station ts
                     join station s on ts.station_id = s.station_id
        ) sub2
                           on sub2.train_id = sub.train_id
        order by (sub.train_id, sub.dptTime, sub2.station_no)
    )
        LOOP
            train_no := result.train_no;
            train_id := result.train_id;
            dptStation_name := result.dptStation;
            dptTime := to_char(result.dptTime, 'HH24:MI');
            arrStation_name := result.arrStation;
            arrTime := to_char(result.arrTime, 'HH24:MI');
            excutionTime := result.excution_time;
            first_price := result.first_price;
            second_price := result.second_price;
            first_remain := result.first_remain;
            second_remain := result.second_remain;
            station_no := result.station_no;
            station_name := result.station_name;
            arr_time := result.arr_time;
            start_time := result.start_time;
            time_diff := result.time_diff;
            return next;
        end loop;
end;
$$;