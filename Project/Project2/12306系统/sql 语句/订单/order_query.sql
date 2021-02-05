create or replace function order_query()
    returns table
            (
                start_train_station varchar,
                end_train_station   varchar,
                username            varchar,
                id_card_number      char(18),
                phone_number        varchar,
                dpt_date            varchar,
                dpt_time            varchar,
                arr_time            varchar,
                train_no            varchar,
                entrance            varchar,
                seat_type           varchar,
                seat_info           varchar,
                price               varchar,
                state               varchar,
                ticket_id           int
            )
    language plpgsql
as
$$
DECLARE
    result record;
BEGIN
    for result in (select s1.station_name                                                               as start_train_station,
                          s2.station_name                                                               as end_train_station,
                          u.name                                                                        as username,
                          u.id_card_number                                                              as
                                                                                                           id_card_number,
                          u.phone_number                                                                as
                                                                                                           phone_number,
                          to_char((t.start_date + ts2.arr_day - ts1.arr_day), 'YYYY年MM月DD日')            as
                                                                                                           dpt_date,
                          to_char(ts1.start_time, 'HH24:MI')                                            as
                                                                                                           dpt_time,
                          to_char(ts2.arr_time, 'HH24:MI')                                              as
                                                                                                           arr_time,
                          t.train_no                                                                    as
                                                                                                           train_no,
                          ts1.entrance                                                                  as entrance,
                          case tk.seat_type when '1' then '一等座' when '2' then '二等座' end                 as
                                                                                                           seat_type,
                          tk.carriage_no || '车' || tk.seat_no                                           as
                                                                                                           seat_info,
                          tk.price || '元'                                                               as
                                                                                                           price,
                          case tk.state when '1' then '已支付' when '0' then '已退票' end as
                                                                                                           state,
                          tk.ticket_id                                                                  as ticket_id
                   from ticket tk
                            join train t on tk.train_id = t.train_id
                            join train_station ts1 on t.train_id = ts1.train_id
                            join train_station ts2 on t.train_id = ts2.train_id
                            join station s1 on tk.start_train_station = s1.station_id
                            join station s2 on tk.end_train_station = s2.station_id
                            join users u on tk.user_id = u.user_id
                   where ts1.station_id = tk.start_train_station
                     and ts2.station_id = tk.end_train_station)
        LOOP
            start_train_station := result.start_train_station;
            end_train_station := result.end_train_station;
            username := result.username;
            id_card_number := result.id_card_number;
            phone_number := result.phone_number;
            dpt_date := result.dpt_date;
            dpt_time := result.dpt_time;
            arr_time := result.arr_time;
            train_no := result.train_no;
            entrance := result.entrance;
            seat_type := result.seat_type;
            seat_info := result.seat_info;
            price := result.price;
            state := result.state;
            ticket_id := result.ticket_id;
            return next;
        end loop;
end;
$$;