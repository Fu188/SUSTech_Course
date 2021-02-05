create table if not exists station
(
    station_id serial not null
        constraint code_primary_key
            primary key,
    station_name varchar not null,
    code int not null,
    constraint name_unique
        unique (station_name)
);

create table if not exists train
(
    train_id   serial  not null
        constraint train_id_primary_key
            primary key,
    train_no   varchar not null,
    start_date date    not null,
    constraint train_unique
        unique (train_no, start_date)
);

create table if not exists train_station
(
    id            serial not null
        constraint route_id_primary_key primary key,
    train_id      int    not null references train (train_id),
    station_no    int    not null,
    station_id    int    not null references station (station_id),
    arr_time      time,
    start_time    time,
    arr_day       int    not null,
    entrance      varchar,
    interval_mile float  not null,
    first_price   varchar,
    second_price  varchar,
    first_remain  int,
    second_remain int,
    constraint train_station_unique
        unique (train_id, station_no)
);
create table if not exists users
(
    user_id        serial   not null
        constraint user_id_primary
            primary key,
    id_card_number char(18) not null,
    name           varchar  not null,
    phone_number   varchar  not null,
    constraint id_card_unique
        unique (id_card_number)
);
create table if not exists ticket
(
    ticket_id           serial  not null
        constraint ticket_id_primary
            primary key,
    user_id             int     not null references users (user_id),
    train_id            int     not null references train (train_id),
    start_train_station int     not null references train_station (id),
    end_train_station   int     not null references train_station (id),
    carriage_no         int     not null,
    seat_no             varchar not null,
    seat_type           char    not null,
    price               varchar not null,
    state               char    not null
);
create table if not exists edit_log
(
    id             serial    not null
        constraint log_primary
            primary key,
    table_name     varchar   not null,
    column_name    varchar   not null,
    primary_key    int       not null,
    from_value     varchar,
    to_value       varchar,
    edit_time      timestamp not null,
    operation_type char      not null,
    editor         varchar   not null
);

create table if not exists district
(
    id   serial  not null
        constraint district_pkey
            primary key,
    code varchar not null,
    name varchar not null
);