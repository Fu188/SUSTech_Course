-- 修改用户名
create or replace function update_username(update_id int, update_username varchar)
    returns text
    language plpgsql
as
$$
BEGIN
    if (update_id not in (select user_id from users)) then
        return '不存在此用户';
    end if;
    update users set name = update_username where user_id = update_id;
    return '修改成功';
exception
    when others then
        rollback;
        return '修改失败';
end;
$$;