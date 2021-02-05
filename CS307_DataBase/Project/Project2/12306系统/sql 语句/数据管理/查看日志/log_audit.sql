create or replace function station_audit()
returns trigger
language plpgsql
as
$$
begin
    if tg_op='UPDATE'
    then
        insert into edit_log (table_name,primary_key,column_name,from_value,to_value,edit_time,operation_type,editor)
        select table_name,old.station_id,column_name,from_value,to_value,current_timestamp,'U',cast(current_user as varchar)
        from(
            select 'station' table_name, 'station_id' column_name,
            cast(old.station_id as varchar) from_value,
            cast(new.station_id as varchar) to_value
            where old.station_id<>new.station_id
            union all
            select 'station' table_name, 'station_name' column_name,
            cast(old.station_name as varchar) from_value,
            cast(new.station_name as varchar) to_value
            where old.station_name<>new.station_name)modified;
    elsif tg_op='INSERT' then
        insert into edit_log (table_name,primary_key,column_name,to_value,edit_time,operation_type,editor)
        select table_name,new.station_id,column_name,to_value,current_timestamp,'I',cast(current_user as varchar)
        from(
            select 'station' table_name, 'station_id' column_name,
            cast(new.station_id as varchar) to_value
            union all
            select 'station' table_name, 'station_name' column_name,
            cast(new.station_name as varchar) to_value)modified;
    else
        insert into edit_log (table_name,primary_key,column_name,from_value,edit_time,operation_type,editor)
        select table_name,old.station_id,column_name,from_value,current_timestamp,'D',cast(current_user as varchar)
        from(
            select 'station' table_name, 'station_id' column_name,
            cast(old.station_id as varchar) from_value
            union all
            select 'station' table_name, 'station_name' column_name,
            cast(old.station_name as varchar) from_value)modified;
    end if;
    return null;
end;
$$;
create trigger station_trg
after insert or update or delete on station
for each row
execute procedure station_audit();
create or replace function district_audit()
returns trigger
language plpgsql
as
$$
begin
    if tg_op='UPDATE'
    then
        insert into edit_log (table_name,primary_key,column_name,from_value,to_value,edit_time,operation_type,editor)
        select table_name,old.id,column_name,from_value,to_value,current_timestamp,'U',cast(current_user as varchar)
        from(
            select 'district' table_name, 'id' column_name,
            cast(old.id as varchar) from_value,
            cast(new.id as varchar) to_value
            where old.id<>new.id
            union all
            select 'district' table_name, 'code' column_name,
            cast(old.code as varchar) from_value,
            cast(new.code as varchar) to_value
            where old.code<>new.code
            union all
            select 'district' table_name, 'name' column_name,
            cast(old.name as varchar) from_value,
            cast(new.name as varchar) to_value
            where old.name<>new.name)modified;
    elsif tg_op='INSERT' then
        insert into edit_log (table_name,primary_key,column_name,to_value,edit_time,operation_type,editor)
        select table_name,new.id,column_name,to_value,current_timestamp,'I',cast(current_user as varchar)
        from(
            select 'district' table_name, 'id' column_name,
            cast(new.id as varchar) to_value
            union all
            select 'district' table_name, 'code' column_name,
            cast(new.code as varchar) to_value
            union all
            select 'district' table_name, 'name' column_name,
            cast(new.name as varchar) to_value)modified;
    else
        insert into edit_log (table_name,primary_key,column_name,from_value,edit_time,operation_type,editor)
        select table_name,old.id,column_name,from_value,current_timestamp,'D',cast(current_user as varchar)
        from(
            select 'district' table_name, 'id' column_name,
            cast(old.id as varchar) from_value
            union all
            select 'district' table_name, 'code' column_name,
            cast(old.code as varchar) from_value
            union all
            select 'district' table_name, 'name' column_name,
            cast(old.name as varchar) from_value)modified;
    end if;
    return null;
end;
$$;
create trigger district_trg
after insert or update or delete on district
for each row
execute procedure district_audit();
create or replace function train_audit()
returns trigger
language plpgsql
as
$$
begin
    if tg_op='UPDATE'
    then
        insert into edit_log (table_name,primary_key,column_name,from_value,to_value,edit_time,operation_type,editor)
        select table_name,old.train_id,column_name,from_value,to_value,current_timestamp,'U',cast(current_user as varchar)
        from(
            select 'train' table_name, 'train_id' column_name,
            cast(old.train_id as varchar) from_value,
            cast(new.train_id as varchar) to_value
            where old.train_id<>new.train_id
            union all
            select 'train' table_name, 'train_no' column_name,
            cast(old.train_no as varchar) from_value,
            cast(new.train_no as varchar) to_value
            where old.train_no<>new.train_no
            union all
            select 'train' table_name, 'start_date' column_name,
            cast(old.start_date as varchar) from_value,
            cast(new.start_date as varchar) to_value
            where old.start_date<>new.start_date)modified;
    elsif tg_op='INSERT' then
        insert into edit_log (table_name,primary_key,column_name,to_value,edit_time,operation_type,editor)
        select table_name,new.train_id,column_name,to_value,current_timestamp,'I',cast(current_user as varchar)
        from(
            select 'train' table_name, 'train_id' column_name,
            cast(new.train_id as varchar) to_value
            union all
            select 'train' table_name, 'train_no' column_name,
            cast(new.train_no as varchar) to_value
            union all
            select 'train' table_name, 'start_date' column_name,
            cast(new.start_date as varchar) to_value)modified;
    else
        insert into edit_log (table_name,primary_key,column_name,from_value,edit_time,operation_type,editor)
        select table_name,old.train_id,column_name,from_value,current_timestamp,'D',cast(current_user as varchar)
        from(
            select 'train' table_name, 'train_id' column_name,
            cast(old.train_id as varchar) from_value
            union all
            select 'train' table_name, 'train_no' column_name,
            cast(old.train_no as varchar) from_value
            union all
            select 'train' table_name, 'start_date' column_name,
            cast(old.start_date as varchar) from_value)modified;
    end if;
    return null;
end;
$$;
create trigger train_trg
after insert or update or delete on train
for each row
execute procedure train_audit();
create or replace function train_station_audit()
returns trigger
language plpgsql
as
$$
begin
    if tg_op='UPDATE'
    then
        insert into edit_log (table_name,primary_key,column_name,from_value,to_value,edit_time,operation_type,editor)
        select table_name,old.id,column_name,from_value,to_value,current_timestamp,'U',cast(current_user as varchar)
        from(
            select 'train_station' table_name, 'id' column_name,
            cast(old.id as varchar) from_value,
            cast(new.id as varchar) to_value
            where old.id<>new.id
            union all
            select 'train_station' table_name, 'train_id' column_name,
            cast(old.train_id as varchar) from_value,
            cast(new.train_id as varchar) to_value
            where old.train_id<>new.train_id
            union all
            select 'train_station' table_name, 'station_no' column_name,
            cast(old.station_no as varchar) from_value,
            cast(new.station_no as varchar) to_value
            where old.station_no<>new.station_no
            union all
            select 'train_station' table_name, 'station_id' column_name,
            cast(old.station_id as varchar) from_value,
            cast(new.station_id as varchar) to_value
            where old.station_id<>new.station_id
            union all
            select 'train_station' table_name, 'arr_time' column_name,
            cast(old.arr_time as varchar) from_value,
            cast(new.arr_time as varchar) to_value
            where old.arr_time<>new.arr_time
            union all
            select 'train_station' table_name, 'start_time' column_name,
            cast(old.start_time as varchar) from_value,
            cast(new.start_time as varchar) to_value
            where old.start_time<>new.start_time
            union all
            select 'train_station' table_name, 'arr_day' column_name,
            cast(old.arr_day as varchar) from_value,
            cast(new.arr_day as varchar) to_value
            where old.arr_day<>new.arr_day
            union all
            select 'train_station' table_name, 'entrance' column_name,
            cast(old.entrance as varchar) from_value,
            cast(new.entrance as varchar) to_value
            where old.entrance<>new.entrance
            union all
            select 'train_station' table_name, 'interval_mile' column_name,
            cast(old.interval_mile as varchar) from_value,
            cast(new.interval_mile as varchar) to_value
            where old.interval_mile<>new.interval_mile
            union all
            select 'train_station' table_name, 'first_price' column_name,
            cast(old.first_price as varchar) from_value,
            cast(new.first_price as varchar) to_value
            where old.first_price<>new.first_price
            union all
            select 'train_station' table_name, 'second_price' column_name,
            cast(old.second_price as varchar) from_value,
            cast(new.second_price as varchar) to_value
            where old.second_price<>new.second_price
            union all
            select 'train_station' table_name, 'first_remain' column_name,
            cast(old.first_remain as varchar) from_value,
            cast(new.first_remain as varchar) to_value
            where old.first_remain<>new.first_remain
            union all
            select 'train_station' table_name, 'second_remain' column_name,
            cast(old.second_remain as varchar) from_value,
            cast(new.second_remain as varchar) to_value
            where old.second_remain<>new.second_remain)modified;
    elsif tg_op='INSERT' then
        insert into edit_log (table_name,primary_key,column_name,to_value,edit_time,operation_type,editor)
        select table_name,new.id,column_name,to_value,current_timestamp,'I',cast(current_user as varchar)
        from(
            select 'train_station' table_name, 'id' column_name,
            cast(new.id as varchar) to_value
            union all
            select 'train_station' table_name, 'train_id' column_name,
            cast(new.train_id as varchar) to_value
            union all
            select 'train_station' table_name, 'station_no' column_name,
            cast(new.station_no as varchar) to_value
            union all
            select 'train_station' table_name, 'station_id' column_name,
            cast(new.station_id as varchar) to_value
            union all
            select 'train_station' table_name, 'arr_time' column_name,
            cast(new.arr_time as varchar) to_value
            union all
            select 'train_station' table_name, 'start_time' column_name,
            cast(new.start_time as varchar) to_value
            union all
            select 'train_station' table_name, 'arr_day' column_name,
            cast(new.arr_day as varchar) to_value
            union all
            select 'train_station' table_name, 'entrance' column_name,
            cast(new.entrance as varchar) to_value
            union all
            select 'train_station' table_name, 'interval_mile' column_name,
            cast(new.interval_mile as varchar) to_value
            union all
            select 'train_station' table_name, 'first_price' column_name,
            cast(new.first_price as varchar) to_value
            union all
            select 'train_station' table_name, 'second_price' column_name,
            cast(new.second_price as varchar) to_value
            union all
            select 'train_station' table_name, 'first_remain' column_name,
            cast(new.first_remain as varchar) to_value
            union all
            select 'train_station' table_name, 'second_remain' column_name,
            cast(new.second_remain as varchar) to_value)modified;
    else
        insert into edit_log (table_name,primary_key,column_name,from_value,edit_time,operation_type,editor)
        select table_name,old.id,column_name,from_value,current_timestamp,'D',cast(current_user as varchar)
        from(
            select 'train_station' table_name, 'id' column_name,
            cast(old.id as varchar) from_value
            union all
            select 'train_station' table_name, 'train_id' column_name,
            cast(old.train_id as varchar) from_value
            union all
            select 'train_station' table_name, 'station_no' column_name,
            cast(old.station_no as varchar) from_value
            union all
            select 'train_station' table_name, 'station_id' column_name,
            cast(old.station_id as varchar) from_value
            union all
            select 'train_station' table_name, 'arr_time' column_name,
            cast(old.arr_time as varchar) from_value
            union all
            select 'train_station' table_name, 'start_time' column_name,
            cast(old.start_time as varchar) from_value
            union all
            select 'train_station' table_name, 'arr_day' column_name,
            cast(old.arr_day as varchar) from_value
            union all
            select 'train_station' table_name, 'entrance' column_name,
            cast(old.entrance as varchar) from_value
            union all
            select 'train_station' table_name, 'interval_mile' column_name,
            cast(old.interval_mile as varchar) from_value
            union all
            select 'train_station' table_name, 'first_price' column_name,
            cast(old.first_price as varchar) from_value
            union all
            select 'train_station' table_name, 'second_price' column_name,
            cast(old.second_price as varchar) from_value
            union all
            select 'train_station' table_name, 'first_remain' column_name,
            cast(old.first_remain as varchar) from_value
            union all
            select 'train_station' table_name, 'second_remain' column_name,
            cast(old.second_remain as varchar) from_value)modified;
    end if;
    return null;
end;
$$;
create trigger train_station_trg
after insert or update or delete on train_station
for each row
execute procedure train_station_audit();
create or replace function users_audit()
returns trigger
language plpgsql
as
$$
begin
    if tg_op='UPDATE'
    then
        insert into edit_log (table_name,primary_key,column_name,from_value,to_value,edit_time,operation_type,editor)
        select table_name,old.user_id,column_name,from_value,to_value,current_timestamp,'U',cast(current_user as varchar)
        from(
            select 'users' table_name, 'user_id' column_name,
            cast(old.user_id as varchar) from_value,
            cast(new.user_id as varchar) to_value
            where old.user_id<>new.user_id
            union all
            select 'users' table_name, 'id_card_number' column_name,
            cast(old.id_card_number as varchar) from_value,
            cast(new.id_card_number as varchar) to_value
            where old.id_card_number<>new.id_card_number
            union all
            select 'users' table_name, 'name' column_name,
            cast(old.name as varchar) from_value,
            cast(new.name as varchar) to_value
            where old.name<>new.name
            union all
            select 'users' table_name, 'phone_number' column_name,
            cast(old.phone_number as varchar) from_value,
            cast(new.phone_number as varchar) to_value
            where old.phone_number<>new.phone_number)modified;
    elsif tg_op='INSERT' then
        insert into edit_log (table_name,primary_key,column_name,to_value,edit_time,operation_type,editor)
        select table_name,new.user_id,column_name,to_value,current_timestamp,'I',cast(current_user as varchar)
        from(
            select 'users' table_name, 'user_id' column_name,
            cast(new.user_id as varchar) to_value
            union all
            select 'users' table_name, 'id_card_number' column_name,
            cast(new.id_card_number as varchar) to_value
            union all
            select 'users' table_name, 'name' column_name,
            cast(new.name as varchar) to_value
            union all
            select 'users' table_name, 'phone_number' column_name,
            cast(new.phone_number as varchar) to_value)modified;
    else
        insert into edit_log (table_name,primary_key,column_name,from_value,edit_time,operation_type,editor)
        select table_name,old.user_id,column_name,from_value,current_timestamp,'D',cast(current_user as varchar)
        from(
            select 'users' table_name, 'user_id' column_name,
            cast(old.user_id as varchar) from_value
            union all
            select 'users' table_name, 'id_card_number' column_name,
            cast(old.id_card_number as varchar) from_value
            union all
            select 'users' table_name, 'name' column_name,
            cast(old.name as varchar) from_value
            union all
            select 'users' table_name, 'phone_number' column_name,
            cast(old.phone_number as varchar) from_value)modified;
    end if;
    return null;
end;
$$;
create trigger users_trg
after insert or update or delete on users
for each row
execute procedure users_audit();
create or replace function ticket_audit()
returns trigger
language plpgsql
as
$$
begin
    if tg_op='UPDATE'
    then
        insert into edit_log (table_name,primary_key,column_name,from_value,to_value,edit_time,operation_type,editor)
        select table_name,old.ticket_id,column_name,from_value,to_value,current_timestamp,'U',cast(current_user as varchar)
        from(
            select 'ticket' table_name, 'ticket_id' column_name,
            cast(old.ticket_id as varchar) from_value,
            cast(new.ticket_id as varchar) to_value
            where old.ticket_id<>new.ticket_id
            union all
            select 'ticket' table_name, 'user_id' column_name,
            cast(old.user_id as varchar) from_value,
            cast(new.user_id as varchar) to_value
            where old.user_id<>new.user_id
            union all
            select 'ticket' table_name, 'train_id' column_name,
            cast(old.train_id as varchar) from_value,
            cast(new.train_id as varchar) to_value
            where old.train_id<>new.train_id
            union all
            select 'ticket' table_name, 'start_train_station' column_name,
            cast(old.start_train_station as varchar) from_value,
            cast(new.start_train_station as varchar) to_value
            where old.start_train_station<>new.start_train_station
            union all
            select 'ticket' table_name, 'end_train_station' column_name,
            cast(old.end_train_station as varchar) from_value,
            cast(new.end_train_station as varchar) to_value
            where old.end_train_station<>new.end_train_station
            union all
            select 'ticket' table_name, 'carriage_no' column_name,
            cast(old.carriage_no as varchar) from_value,
            cast(new.carriage_no as varchar) to_value
            where old.carriage_no<>new.carriage_no
            union all
            select 'ticket' table_name, 'seat_no' column_name,
            cast(old.seat_no as varchar) from_value,
            cast(new.seat_no as varchar) to_value
            where old.seat_no<>new.seat_no
            union all
            select 'ticket' table_name, 'seat_type' column_name,
            cast(old.seat_type as varchar) from_value,
            cast(new.seat_type as varchar) to_value
            where old.seat_type<>new.seat_type
            union all
            select 'ticket' table_name, 'price' column_name,
            cast(old.price as varchar) from_value,
            cast(new.price as varchar) to_value
            where old.price<>new.price
            union all
            select 'ticket' table_name, 'state' column_name,
            cast(old.state as varchar) from_value,
            cast(new.state as varchar) to_value
            where old.state<>new.state)modified;
    elsif tg_op='INSERT' then
        insert into edit_log (table_name,primary_key,column_name,to_value,edit_time,operation_type,editor)
        select table_name,new.ticket_id,column_name,to_value,current_timestamp,'I',cast(current_user as varchar)
        from(
            select 'ticket' table_name, 'ticket_id' column_name,
            cast(new.ticket_id as varchar) to_value
            union all
            select 'ticket' table_name, 'user_id' column_name,
            cast(new.user_id as varchar) to_value
            union all
            select 'ticket' table_name, 'train_id' column_name,
            cast(new.train_id as varchar) to_value
            union all
            select 'ticket' table_name, 'start_train_station' column_name,
            cast(new.start_train_station as varchar) to_value
            union all
            select 'ticket' table_name, 'end_train_station' column_name,
            cast(new.end_train_station as varchar) to_value
            union all
            select 'ticket' table_name, 'carriage_no' column_name,
            cast(new.carriage_no as varchar) to_value
            union all
            select 'ticket' table_name, 'seat_no' column_name,
            cast(new.seat_no as varchar) to_value
            union all
            select 'ticket' table_name, 'seat_type' column_name,
            cast(new.seat_type as varchar) to_value
            union all
            select 'ticket' table_name, 'price' column_name,
            cast(new.price as varchar) to_value
            union all
            select 'ticket' table_name, 'state' column_name,
            cast(new.state as varchar) to_value)modified;
    else
        insert into edit_log (table_name,primary_key,column_name,from_value,edit_time,operation_type,editor)
        select table_name,old.ticket_id,column_name,from_value,current_timestamp,'D',cast(current_user as varchar)
        from(
            select 'ticket' table_name, 'ticket_id' column_name,
            cast(old.ticket_id as varchar) from_value
            union all
            select 'ticket' table_name, 'user_id' column_name,
            cast(old.user_id as varchar) from_value
            union all
            select 'ticket' table_name, 'train_id' column_name,
            cast(old.train_id as varchar) from_value
            union all
            select 'ticket' table_name, 'start_train_station' column_name,
            cast(old.start_train_station as varchar) from_value
            union all
            select 'ticket' table_name, 'end_train_station' column_name,
            cast(old.end_train_station as varchar) from_value
            union all
            select 'ticket' table_name, 'carriage_no' column_name,
            cast(old.carriage_no as varchar) from_value
            union all
            select 'ticket' table_name, 'seat_no' column_name,
            cast(old.seat_no as varchar) from_value
            union all
            select 'ticket' table_name, 'seat_type' column_name,
            cast(old.seat_type as varchar) from_value
            union all
            select 'ticket' table_name, 'price' column_name,
            cast(old.price as varchar) from_value
            union all
            select 'ticket' table_name, 'state' column_name,
            cast(old.state as varchar) from_value)modified;
    end if;
    return null;
end;
$$;
create trigger ticket_trg
after insert or update or delete on ticket
for each row
execute procedure ticket_audit();
