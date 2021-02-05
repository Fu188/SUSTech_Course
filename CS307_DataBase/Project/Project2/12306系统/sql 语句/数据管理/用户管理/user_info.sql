-- 查看所有用户
create or replace function user_info()
    returns table
            (
                user_id        int,
                username       varchar,
                id_card_number varchar,
                phone_number   varchar
            )
    language plpgsql
as
$$
DECLARE
    result record;
BEGIN
    for result in (
        select u.user_id id, u.name u_name, u.id_card_number u_id, u.phone_number u_phone
        from users u
    )
        LOOP
            user_id = result.id;
            username = result.u_name;
            id_card_number = result.u_id;
            phone_number = result.u_phone;
            return next;
        end loop;
end;
$$;