-- 修改手机号
create or replace function update_phone(update_id int, update_phone_number varchar)
    returns text
    language plpgsql
as
$$
BEGIN
    if (update_id not in (select user_id from users)) then
        return '不存在此用户';
    end if;
    update users set phone_number = update_phone_number where user_id = update_id;
    return '修改成功';
exception
    when others then
        rollback;
        return '修改失败';
end;
$$;