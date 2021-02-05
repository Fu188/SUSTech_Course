-- 加入车站
create or replace function update_add_station(add_train_no varchar, add_dpt_date varchar,
                                              add_station_name varchar, add_station_no int,
                                              add_arr_time varchar, add_dpt_time varchar,
                                              add_arr_day int, add_entrance varchar,
                                              add_interval_mile varchar, add_first_price varchar,
                                              add_first_remain int, add_second_price varchar,
                                              add_second_remain int)
    returns text
    language plpgsql
as
$$
DECLARE
    count_judge        int;
    temp               int;
    get_station_id     int;
    get_train_id       int;
    get_max_station_no int;
    get_max_arr_day    int;
    get_max_time       time;
    get_min_arr_day    int;
    get_min_time       time;
    get_max_interval   float;
    get_min_interval   float;
    get_arr_time       time;
    get_dpt_time       time;
    get_first_price    float;
    get_second_price   float;
    get_interval_mile  float;
BEGIN
    select (select count(*)
            from train t
            where t.train_no = add_train_no
              and t.start_date = to_date(add_dpt_date, 'YYYY-MM-DD'))
    into count_judge;

    if (count_judge = 0) then
        return '车次信息错误';
    end if;

    if (add_station_name not in (select station_name from station)) then
        return '不存在此车站';
    end if;

    get_arr_time = null;
    get_dpt_time = null;

    if (add_arr_time <> 'null') then
        select (select (add_arr_time::time)) into get_arr_time;
    end if;
    if (add_dpt_time <> 'null') then
        select (select (add_dpt_time::time)) into get_dpt_time;
    end if;

    if (add_first_remain < 0 or add_first_remain > 1500 or add_second_remain < 0 or add_second_remain > 1500) then
        return '余票信息错误';
    end if;

    select (select cast(add_first_price as float)) into get_first_price;
    select (select cast(add_second_price as float)) into get_second_price;
    select (select cast(add_interval_mile as float)) into get_interval_mile;

    select (select t.train_id
            from train t
            where t.train_no = add_train_no
              and t.start_date = to_date(add_dpt_date, 'YYYY-MM-DD'))
    into get_train_id;

    select (select s.station_id
            from station s
            where s.station_name = add_station_name)
    into get_station_id;

    select (select coalesce(max(ts.station_no), 0)
            from train_station ts
            where ts.train_id = get_train_id)
    into get_max_station_no;

    if (add_station_no > get_max_station_no + 1) then
        return '车站编号错误';
    end if;

    select (select coalesce(max(ts.arr_day), 0)
            from train_station ts
            where ts.train_id = get_train_id
              and ts.station_no between 1 and add_station_no - 1)
    into get_max_arr_day;

    select (select coalesce(min(ts.arr_day), 9999)
            from train_station ts
            where ts.train_id = get_train_id
              and ts.station_no between add_station_no + 1 and get_max_station_no)
    into get_min_arr_day;

    select (select max(start_time)
            from train_station ts
            where ts.train_id = get_train_id
              and ts.arr_day = get_max_arr_day
              and ts.station_no < add_station_no)
    into get_max_time;

    select (select min(arr_time)
            from train_station ts
            where ts.train_id = get_train_id
              and ts.arr_day = get_min_arr_day
              and ts.station_no > add_station_no)
    into get_min_time;

    if (add_arr_day < get_max_arr_day or add_arr_day > get_min_arr_day or
        get_arr_time > get_dpt_time or (add_arr_day = get_max_arr_day and get_arr_time < get_max_time) or
        (add_arr_day = get_min_arr_day and get_dpt_time > get_min_time)) then
        return '时间信息错误';
    end if;

    select (select max(ts.interval_mile)
            from train_station ts
            where ts.train_id = get_train_id
              and ts.station_no < add_station_no)
    into get_max_interval;

    select (select min(ts.interval_mile)
            from train_station ts
            where ts.train_id = get_train_id
              and ts.station_no >= add_station_no)
    into get_min_interval;

    if (cast(add_interval_mile as float) < get_max_interval or cast(add_interval_mile as float) > get_min_interval) then
        return '里程信息错误';
    end if;

    temp := get_max_station_no;

    LOOP
        EXIT WHEN temp = add_station_no - 1;
        update train_station
        set station_no = station_no + 1
        where id in (select ts.id
                     from train_station ts
                     where ts.train_id = get_train_id
                       and ts.station_no = temp);
        temp := temp - 1;
    end loop;

    insert into train_station(train_id, station_no, station_id, arr_time, start_time, arr_day, entrance, interval_mile,
                              first_price, second_price, first_remain, second_remain)
    values (get_train_id, add_station_no, get_station_id, get_arr_time, get_dpt_time, add_arr_day, add_entrance,
            get_interval_mile,
            add_first_price, add_second_price, add_first_remain, add_second_remain);

    return '更新成功';
exception
    when others then
        rollback;
        return '更新失败';
end;
$$;