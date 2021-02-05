create or replace function del_ticket(del_id int)
    returns text
    language plpgsql
as
$$
DECLARE
    result           record;
    begin_station_no int;
    end_station_no   int;
    seat_type        char;
    get_state        char;
BEGIN
    select tk.state
    from ticket tk
    where tk.ticket_id = del_id
    into get_state;

    if (del_id not in (select ticket_id from ticket)) then
        return '不存在此订单';
    end if;

    if (get_state = '1') then
        for result in (
            select ts1.station_no s1_no, ts2.station_no s2_no, tk.seat_type st
            from ticket tk
                     join train_station ts1 on tk.train_id = ts1.train_id
                     join train_station ts2 on tk.train_id = ts2.train_id
            where ts1.station_id = tk.start_train_station
              and ts2.station_id = tk.end_train_station
        )
            LOOP
                begin_station_no := result.s1_no;
                end_station_no := result.s2_no;
                seat_type := result.st;
            end loop;

        if (seat_type = '1') then
            UPDATE train_station ts3
            set first_remain = first_remain + 1
            where ts3.id in (
                select ts.id
                from train_station ts
                         join ticket tk on tk.train_id = ts.train_id
                    and ts.station_no between begin_station_no and end_station_no);
        end if;

        if (seat_type = '2') then
            UPDATE train_station ts3
            set second_remain = second_remain + 1
            where ts3.id in (
                select ts.id
                from train_station ts
                         join ticket tk on tk.train_id = ts.train_id
                    and ts.station_no between begin_station_no and end_station_no);
        end if;
    end if;

    delete from ticket where ticket_id = del_id;

    return '删除订单成功';
exception
    when others then
        return '删除订单失败';
end;
$$;