-- 增加车次
create or replace function add_train(add_train_no varchar, add_dpt_date varchar, add_station_name varchar,
                                     add_arr_time varchar, add_dpt_time varchar, add_arr_day int, add_entrance varchar,
                                     add_interval_mile varchar, add_first_price varchar,
                                     add_first_remain int, add_second_price varchar, add_second_remain int)
    returns text
    language plpgsql
as
$$
DECLARE
    get_station_id     int;
    get_train_id       int;
    get_max_station_no int;
    get_max_arr_day    int;
    get_max_time       time;
    get_max_interval   float;
    get_arr_time       time;
    get_dpt_time       time;
    get_first_price    float;
    get_second_price   float;
    get_interval_mile  float;
BEGIN
    if (add_station_name not in (select station_name from station)) then
        return '不存在此车站';
    end if;

    get_arr_time = null;
    get_dpt_time = null;

    if(add_arr_time <>'null') then
        select (select (add_arr_time::time)) into get_arr_time;
    end if;
    if(add_dpt_time <> 'null') then
        select (select (add_dpt_time::time)) into get_dpt_time;
    end if;

    if (add_first_remain < 0 or add_first_remain > 1500 or add_second_remain < 0 or add_second_remain > 1500) then
        return '余票信息错误';
    end if;

    select (select cast(add_first_price as float)) into get_first_price;
    select (select cast(add_second_price as float)) into get_second_price;
    select (select cast(add_interval_mile as float)) into get_interval_mile;

    select (select s.station_id
            from station s
            where s.station_name = add_station_name)
    into get_station_id;

    insert into train(train_no, start_date)
    values (add_train_no, to_date(add_dpt_date, 'YYYY-MM-DD'))
    on conflict on constraint train_unique
        do nothing;

    select (select t.train_id
            from train t
            where t.train_no = add_train_no
              and t.start_date = to_date(add_dpt_date, 'YYYY-MM-DD'))
    into get_train_id;

    select (select coalesce(max(ts.station_no), 0)
            from train_station ts
            where ts.train_id = get_train_id)
    into get_max_station_no;

    select (select coalesce(max(ts.arr_day), 0)
            from train_station ts
            where ts.train_id = get_train_id)
    into get_max_arr_day;

    select (select max(start_time)
            from train_station ts
            where ts.train_id = get_train_id
              and ts.arr_day = get_max_arr_day)
    into get_max_time;

    select (select max(ts.interval_mile)
            from train_station ts
            where ts.train_id = get_train_id)
    into get_max_interval;

    if (cast(add_interval_mile as float) < get_max_interval) then
        return '里程信息错误';
    end if;

    if (get_dpt_time < get_arr_time or add_arr_day < get_max_arr_day or
        (add_arr_day = get_max_arr_day and get_dpt_time < get_max_time)) then
        return '时间信息错误';
    end if;

    insert into train_station(train_id, station_no, station_id, arr_time, start_time, arr_day, entrance, interval_mile,
                              first_price, second_price, first_remain, second_remain)
    values (get_train_id, get_max_station_no + 1, get_station_id, get_arr_time, get_dpt_time, add_arr_day, add_entrance,
            get_interval_mile,
            add_first_price, add_second_price, add_first_remain, add_second_remain);
    return '添加成功';
exception
    when others then
        rollback;
        return '添加失败';
end;
$$;