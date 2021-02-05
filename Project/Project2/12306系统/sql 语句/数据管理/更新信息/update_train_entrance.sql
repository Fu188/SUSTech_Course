-- 更新检票口
create or replace function update_train_entrance(update_train_no varchar, update_dpt_date varchar,
                                                 update_station_no int,
                                                 update_entrance varchar)
    returns text
    language plpgsql
as
$$
DECLARE
    count_judge        int;
    get_train_id       int;
    get_max_station_no int;
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

    update train_station
    set entrance = update_entrance
    where train_id = get_train_id and station_no = update_station_no;
    return '更新成功';
exception
    when others then
        rollback;
        return '更新失败';
end;
$$;