-- 更新出发到达时间
create or replace function update_time(update_train_no varchar, update_dpt_date varchar, update_station_no int,
                                       update_arr_day int, update_arr_time varchar, update_dpt_time varchar)
    returns text
    language plpgsql
as
$$
DECLARE
    count_judge        int;
    get_train_id       int;
    get_max_station_no int;
    get_max_arr_day    int;
    get_min_arr_day    int;
    get_max_time       time;
    get_min_time       time;
    get_arr_time       time;
    get_dpt_time       time;
BEGIN
    select (select count(*)
            from train t
            where t.train_no = update_train_no
              and t.start_date = to_date(update_dpt_date, 'YYYY-MM-DD'))
    into count_judge;

    if (count_judge = 0) then
        return '车次信息错误';
    end if;

    select (select t.train_id
            from train t
            where t.train_no = update_train_no
              and t.start_date = to_date(update_dpt_date, 'YYYY-MM-DD'))
    into get_train_id;

    select (select coalesce(max(ts.station_no), 0)
            from train_station ts
            where ts.train_id = get_train_id)
    into get_max_station_no;

    if (update_station_no < 1 or update_station_no > get_max_station_no) then
        return '车站编号错误';
    end if;

    select (select coalesce(max(ts.arr_day), 0)
            from train_station ts
            where ts.train_id = get_train_id
              and ts.station_no between 1 and update_station_no - 1)
    into get_max_arr_day;

    select (select coalesce(min(ts.arr_day), 9999)
            from train_station ts
            where ts.train_id = get_train_id
              and ts.station_no between update_station_no + 1 and get_max_station_no)
    into get_min_arr_day;

    get_arr_time = null;
    get_dpt_time = null;

    if(update_arr_time <>'null') then
        select (select (update_arr_time::time)) into get_arr_time;
    end if;
    if(update_dpt_time <> 'null') then
        select (select (update_dpt_time::time)) into get_dpt_time;
    end if;

    select (select max(start_time)
            from train_station ts
            where ts.train_id = get_train_id
              and ts.arr_day = get_max_arr_day
              and ts.station_no < update_station_no)
    into get_max_time;

    select (select min(arr_time)
            from train_station ts
            where ts.train_id = get_train_id
              and ts.arr_day = get_min_arr_day
              and ts.station_no > update_station_no)
    into get_min_time;

    if (update_arr_day < get_max_arr_day or update_arr_day > get_min_arr_day or
        get_arr_time > get_dpt_time or (update_arr_day = get_max_arr_day and get_arr_time < get_max_time) or
        (update_arr_day = get_min_arr_day and get_dpt_time > get_min_time)) then
        return '时间信息错误';
    end if;

    update train_station
    set arr_time   = get_arr_time,
        start_time = get_dpt_time,
        arr_day    = update_arr_day
    where train_id = get_train_id
      and update_station_no = station_no;
    return '更新成功';
exception
    when others then
        rollback;
        return '更新失败';
end;
$$;