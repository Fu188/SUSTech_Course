-- 删除车站
create or replace function update_del_station(del_train_no varchar, del_dpt_date varchar, del_station_no int)
    returns text
    language plpgsql
as
$$
DECLARE
    count_judge        int;
    temp               int;
    get_train_id       int;
    get_max_station_no int;
BEGIN
    select (select count(*)
            from train t
            where t.train_no = del_train_no
              and t.start_date = to_date(del_dpt_date, 'YYYY-MM-DD'))
    into count_judge;

    if (count_judge = 0) then
        return '车次信息错误';
    end if;

    select (select t.train_id
            from train t
            where t.train_no = del_train_no
              and t.start_date = to_date(del_dpt_date, 'YYYY-MM-DD'))
    into get_train_id;

    select (select coalesce(max(ts.station_no), 0)
            from train_station ts
            where ts.train_id = get_train_id)
    into get_max_station_no;

    if (del_station_no < 1 or del_station_no > get_max_station_no) then
        return '车站编号错误';
    end if;

    delete from train_station ts where ts.train_id = get_train_id and ts.station_no = del_station_no;
    temp := del_station_no + 1;
    LOOP
        Exit WHEN temp > get_max_station_no;
        update train_station
        set station_no = station_no - 1
        where id in (select ts.id
                     from train_station ts
                     where ts.train_id = get_train_id
                       and ts.station_no = temp);
        temp := temp + 1;
    end loop;
    return '更新成功';
exception
    when others then
        rollback;
        return '更新失败';
END
$$;