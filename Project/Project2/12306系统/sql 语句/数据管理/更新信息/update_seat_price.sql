-- 更新价格
create or replace function update_seat_price(update_train_no varchar, update_dpt_date varchar, update_station_no int,
                                             update_seat_type varchar, update_price varchar)
    returns text
    language plpgsql
as
$$
DECLARE
    count_judge        int;
    get_train_id       int;
    get_max_station_no int;
    get_price          float;
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

    get_price = cast(update_price as float);

    if (update_seat_type = '一等座') then
        update train_station
        set first_price = update_price
        where train_id = get_train_id
          and update_station_no = station_no;
    end if;
    if (update_seat_type = '二等座') then
        update train_station
        set second_price = update_price
        where train_id = get_train_id
          and update_station_no = station_no;
    end if;
    return '更新成功';
exception
    when others then
        rollback;
        return '更新失败';
end;
$$;